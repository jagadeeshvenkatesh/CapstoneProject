<%@ include file="../jspf/header.jsp" %>

<div style="border: 20px solid white;
            margin: 0 auto;
            background: white;">

    <body class="uk-background-muted">

    <%@include file="../jspf/navbar.jspf" %>

    <%@ include file="../jspf/messages.jsp" %>

    <div class="uk-container">

        <div class="uk-grid uk-margin-medium-bottom" uk-grid>

            <div class="uk-width-2-3@m uk-width-1-1@s uk-align-center">

                <form role="form" data-toggle="validator"
                      method="post" action="create" class="uk-form uk-grid-small" uk-grid>

                    <h1 class="uk-heading-line uk-text-center"><span>Registration</span></h1>

                    <hr class="colorgraph uk-width-1-1 uk-align-center">

                    <div class="uk-tile-default uk-tile-large uk-border-rounded uk-grid uk-padding" uk-grid>

                        <div class="uk-width-1-2@m uk-width-1-1@s">
                            <label class="uk-form-label uk-text-large">First Name</label>
                            <input type="text" name="firstName" path="firstName"
                                   id="firstName" class="uk-input"
                                   placeholder="First Name" data-minlength="2"
                                   data-minlength="30" required>
                        </div>

                        <div class="uk-width-1-2@m uk-width-1-1@s">
                            <label class="uk-form-label uk-text-large">Last Name</label>
                            <input type="text" name="lastName" path="lastName" id="lastName"
                                   class="uk-input" placeholder="Last Name" data-minlength="2"
                                   data-minlength="30" required>
                        </div>

                        <div class="uk-width-1-1">
                            <label class="uk-form-label uk-text-large">Username</label>
                            <input type="text" name="username" path="username" id="username"
                                   class="uk-input" placeholder="Username"
                                   required>
                        </div>

                        <div class="uk-width-1-1">
                            <label class="uk-form-label uk-text-large">Phone Number</label>
                            <input type="tel" name="phoneNumber" id="phoneNumber" path="phoneNumber"
                                   class="uk-input"
                                   placeholder="Phone Number" min="9" required>
                        </div>

                        <div class="uk-width-1-2@m uk-width-1-1@s">
                            <label class="uk-form-label uk-text-large">Personal Email</label>
                            <input type="email" name="email" path="email" id="email"
                                   class="uk-input"
                                   placeholder="Personal Email Address (Optional)">
                        </div>

                        <div class="uk-width-1-2@m uk-width-1-1@s">
                            <label class="uk-form-label uk-text-large">School Email Address</label>
                            <input type="email" name="schoolEmail" path="schoolEmail" id="schoolEmail"
                                   class="uk-input"
                                   placeholder="Benedictine Email Address" required>
                        </div>

                        <div class="uk-width-1-1">
                            <label class="uk-form-label uk-text-large">Year In School</label>
                            <select name="gradeLevel" class="uk-select uk-input"
                                    path="gradeLevel" required>
                                <option value="1">Freshman</option>
                                <option value="2">Sophomore</option>
                                <option value="3">Junior</option>
                                <option value="4">Senior</option>
                            </select>
                        </div>

                        <div class="uk-width-1-2@m uk-width-1-1@s">
                            <label class="uk-form-label uk-text-large">Password</label>
                            <input type="password" name="password" path="password"
                                   id="password" class="uk-input"
                                   placeholder="Password" data-minlength="8" required>
                        </div>

                        <div class="uk-width-1-2@m uk-width-1-1@s">
                            <label class="uk-form-label uk-text-large">Confirm Your Password</label>
                            <input type="password" name="passwordConfirm"
                                   id="passwordConfirm" class="uk-input"
                                   placeholder="Confirm Password"
                                   data-match="#password" data-match-error="Passwords Do Not Match"
                                   required>
                        </div>

                        <div class="uk-width-1-1 uk-position-relative uk-position-bottom">

                            <p>By clicking <span class="uk-badge uk-padding-small">Registration</span>,
                                you agree to the
                                <a uk-toggle="target: #termsAndConditionsModal">Terms and Conditions</a>
                                set out by this site, including our Cookie Use.</p>

                            <br>

                            <button type="submit" value="Register"
                                    class="uk-border-rounded uk-button-primary uk-button-large uk-align-right">
                                Register
                            </button>

                        </div>

                        <c:if test="${admin == true}">
                            <input type="hidden" name="adminRegistration" value="true">
                        </c:if>


                    </div>

                    <hr class="colorgraph uk-width-1-1 uk-align-center uk-margin-medium-top">

                </form>
            </div>
        </div>
    </div>

    <%@include file="terms-and-conditions.jsp" %>

    <script>
        $(document).ready(function () {
            $('.input-group input[required], .input-group textarea[required], .input-group select[required]').on('keyup change', function () {
                var $form = $(this).closest('form'),
                    $group = $(this).closest('.input-group'),
                    $addon = $group.find('.input-group-addon'),
                    $icon = $addon.find('span'),
                    state = false;

                if (!$group.data('validate')) {
                    state = $(this).val() ? true : false;
                } else if ($group.data('validate') == "email") {
                    state = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test($(this).val())
                } else if ($group.data('validate') == 'phone') {
                    state = /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/.test($(this).val())
                } else if ($group.data('validate') == "length") {
                    state = $(this).val().length >= $group.data('length') ? true : false;
                } else if ($group.data('validate') == "number") {
                    state = !isNaN(parseFloat($(this).val())) && isFinite($(this).val());
                } else if ($group.data('validate') == "password") {
                    state = $('#password').val() == $('#passwordConfirm').val();
                }

                if (state) {
                    $addon.removeClass('danger');
                    $addon.addClass('success');
                    $icon.attr('class', 'glyphicon glyphicon-ok');
                } else {
                    $addon.removeClass('success');
                    $addon.addClass('danger');
                    $icon.attr('class', 'glyphicon glyphicon-remove');
                }

                if ($form.find('.input-group-addon.danger').length == 0) {
                    $form.find('[type="submit"]').prop('disabled', false);
                } else {
                    $form.find('[type="submit"]').prop('disabled', true);
                }
            });

            $('.input-group input[required], .input-group textarea[required], .input-group select[required]').trigger('change');


        });
    </script>
    </body>
</div>
</html>