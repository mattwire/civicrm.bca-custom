{literal}
<script type="text/javascript">
    function toggleDietaryOther() {
      if (!cj('#specific-diet-needs').length) {
        cj('input[name="custom_2"]').before("<div class='description' id='specific-diet-needs'>Please enter your specific dietary requirements:</div>");
      }
      cj('label[for="custom_2"]').hide();
      if (cj('input[name="custom_1"]:checked').val() == 4) {
        cj("#editrow-custom_2").show();
      }
      else {
        cj("#editrow-custom_2").hide();
      }
    }

    cj('input[name="custom_1"]').change(function () {
      toggleDietaryOther();
    });

    CRM.$(function($) {
      toggleDietaryOther();

      $('#crm-main-content-wrapper').on('crmFormLoad', function (e) {

      })
    });
</script>
{/literal}
