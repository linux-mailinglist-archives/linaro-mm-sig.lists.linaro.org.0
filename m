Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5813463A142
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:33:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67E483EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:33:32 +0000 (UTC)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by lists.linaro.org (Postfix) with ESMTPS id C562D3EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 08:31:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=kPGXF2Qs;
	spf=pass (lists.linaro.org: domain of davidgow@google.com designates 209.85.217.46 as permitted sender) smtp.mailfrom=davidgow@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-vs1-f46.google.com with SMTP id g65so539978vsc.11
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 00:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f5itqlH3lgFUjlWjJny816/Yur1sd6M0JdYta5U7siY=;
        b=kPGXF2QsKYA0YcfR+/vRi/VbLdMR5TooZ96tvTW5OnYZjb+0ZiV8q+y87RiFEaZLT9
         zUXJCCeKrwykTdsitTmj92xuasmN4EPOhy7SwyVM+/PEF6egf0YMgsreacydzWPlQX5v
         UW6Sdf0B4Of7EnmqFHejhTF8uhSab/Z7fhITP2S8rDONpCcJb1LSnWUUcmIpWSTKweK0
         k0kYcHiuNuGL04LLrmMb75QsYcDXk/BA3PZBTIIfUXe9Ljy+s3V7VyqxzH5jGyjx1AAk
         hIP9VU3LU8HRb24Ib09ROm15G8SV/akNBXwje4B/esVBIYAyjuP2u3jWDi3Omjb7Bky3
         tjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f5itqlH3lgFUjlWjJny816/Yur1sd6M0JdYta5U7siY=;
        b=agmewDoa83ckrKQUh+my8S133YWMDe8sB7BikSouXnyiwY0fkcDwrKF1Jaab88GVar
         1C0YvJw5/ihalAMgb+0UWXvSBK/n2XuAuNBmiodwjA/YpHjXIge9Tx5Na1ZNqCpscApT
         yGIJaDmfVNAfaJzSL1ElbNK4DsP4sjjhcuttxs+GXh/CZLk55IOMI3c3YR8oVDGeoyF+
         Z3JJ/WKgK1uBgjEOpOYjf59hieV6qtDTnGqim69Havfs2Cwj7Q5kKBWTBCxUthXOwlrU
         iqUlYwoLXuBXktdPaESefIpEKS+L6H56BMz7bXwdzDC2kdU884tH9ncROwUu7kx6VDAh
         GX1A==
X-Gm-Message-State: ANoB5pmSjeABdXbGnBuW7cwXsKFl2Rap3FY7ovo1aV9sjHJzKQSnEUE8
	15EGjtPzI+YVzLWKxjNhDagjtS0/hfYjc9qiq4lAcg==
X-Google-Smtp-Source: AA0mqf5HLXx/+xnIsJ4INeKyRQRDw5F+3IFrspoENoyTgQ/Vw1VXQ/wbPnCZCJA9sF+cNiML7lSO0r7e+9DGFoqK77M=
X-Received: by 2002:a05:6102:c0d:b0:3af:2b1c:9908 with SMTP id
 x13-20020a0561020c0d00b003af2b1c9908mr19487383vss.18.1669278686319; Thu, 24
 Nov 2022 00:31:26 -0800 (PST)
MIME-Version: 1.0
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
From: David Gow <davidgow@google.com>
Date: Thu, 24 Nov 2022 16:31:14 +0800
Message-ID: <CABVgOSmtiPMd+GB40_o=eDPg3cKVA3qPNbbYFoRJvJRxQBDj5A@mail.gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
X-Rspamd-Queue-Id: C562D3EE40
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_SMIME(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-vs1-f46.google.com:rdns,mail-vs1-f46.google.com:helo];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de,lists.linaro.org,linuxfoundation.org,vger.kernel.org,riseup.net,redhat.com,googlegroups.com,lists.freedesktop.org,linux.dev,raspberrypi.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-vs1-f46.google.com:rdns,mail-vs1-f46.google.com:helo];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.46:from];
	DKIM_TRACE(0.00)[google.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	HAS_ATTACHMENT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: davidgow@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L77Q6VWYOUX7HKDD3HOWMT7TN532ME45
X-Message-ID-Hash: L77Q6VWYOUX7HKDD3HOWMT7TN532ME45
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:24 +0000
CC: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/24] drm: Introduce Kunit Tests to VC4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L77Q6VWYOUX7HKDD3HOWMT7TN532ME45/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1160036515342292939=="

--===============1160036515342292939==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000025ddb705ee333bf4"

--00000000000025ddb705ee333bf4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 23, 2022 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> This series introduce Kunit tests to the vc4 KMS driver, but unlike what =
we
> have been doing so far in KMS, it actually tests the atomic modesetting c=
ode.
>
> In order to do so, I've had to improve a fair bit on the Kunit helpers al=
ready
> found in the tree in order to register a full blown and somewhat function=
al KMS
> driver.
>
> It's of course relying on a mock so that we can test it anywhere. The moc=
king
> approach created a number of issues, the main one being that we need to c=
reate
> a decent mock in the first place, see patch 22. The basic idea is that I
> created some structures to provide a decent approximation of the actual
> hardware, and that would support both major architectures supported by vc=
4.
>
> This is of course meant to evolve over time and support more tests, but I=
've
> focused on testing the HVS FIFO assignment code which is fairly tricky (a=
nd the
> tests have actually revealed one more bug with our current implementation=
). I
> used to have a userspace implementation of those tests, where I would cop=
y and
> paste the kernel code and run the tests on a regular basis. It's was obvi=
ously
> fairly suboptimal, so it seemed like the perfect testbed for that series.
>
> Let me know what you think,
> Maxime
>
> To: David Airlie <airlied@gmail.com>
> To: Daniel Vetter <daniel@ffwll.ch>
> To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> To: Maxime Ripard <mripard@kernel.org>
> To: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Ma=C3=ADra Canal <mairacanal@riseup.net>
> Cc: Brendan Higgins <brendan.higgins@linux.dev>
> Cc: David Gow <davidgow@google.com>
> Cc: linux-kselftest@vger.kernel.org
> Cc: kunit-dev@googlegroups.com
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> ---

Hi Maxime,

Thanks very much for this! I'm really excited to see these sorts of
tests being written.

I was able to successfully run these under qemu with:
./tools/testing/kunit/kunit.py run --kunitconfig
drivers/gpu/drm/vc4/tests --arch arm64
--cross_compile=3Daarch64-linux-gnu-
(and also with clang, using --make_options LLVM=3D1 instead of the
--cross_compile flag)

On the other hand, they don't compile as a module:
ERROR: modpost: missing MODULE_LICENSE() in drivers/gpu/drm/vc4/tests/vc4_m=
ock.o
ERROR: modpost: missing MODULE_LICENSE() in
drivers/gpu/drm/vc4/tests/vc4_mock_crtc.o
ERROR: modpost: missing MODULE_LICENSE() in
drivers/gpu/drm/vc4/tests/vc4_mock_output.o
ERROR: modpost: missing MODULE_LICENSE() in
drivers/gpu/drm/vc4/tests/vc4_mock_plane.o
ERROR: modpost: missing MODULE_LICENSE() in
drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.o
ERROR: modpost: missing MODULE_LICENSE() in
drivers/gpu/drm/tests/drm_managed_test.o
ERROR: modpost: "vc4_drm_driver"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "vc5_drm_driver"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "drm_kunit_helper_alloc_device"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "__drm_kunit_helper_alloc_drm_device_with_driver"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "__vc4_hvs_alloc"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "vc4_dummy_plane"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "vc4_mock_pv" [drivers/gpu/drm/vc4/tests/vc4_mock.ko] undef=
ined!
ERROR: modpost: "vc4_dummy_output"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
ERROR: modpost: "vc4_kms_load" [drivers/gpu/drm/vc4/tests/vc4_mock.ko]
undefined!
ERROR: modpost: "vc4_txp_crtc_data"
[drivers/gpu/drm/vc4/tests/vc4_mock.ko] undefined!
WARNING: modpost: suppressed 17 unresolved symbol warnings because
there were too many)

Most of those are just the need to export some symbols. There's some
work underway to support conditionally exporting symbols only if KUnit
is enabled, which may help:
https://lore.kernel.org/linux-kselftest/20221102175959.2921063-1-rmoar@goog=
le.com/

Otherwise, I suspect the better short-term solution would just be to
require that the tests are built-in (or at least compiled into
whatever of the drm/vc4 modules makes most sense).

The only other thing which has me a little confused is the naming of
some of the functions, specifically with the __ prefix. Is it just for
internal functions (many of them aren't static, but maybe they could
use the VISIBLE_IF_KUNIT macro if that makes sense), or for versions
of functions which accept extra arguments? Not a big deal (and maybe
it's a DRM naming convention I'm ignorant of), but I couldn't quite
find a pattern on my first read through.

But on the whole, these look good from a KUnit point-of-view. It's
really to see some solid mocking and driver testing, too. There would
be ways to avoid passing the 'struct kunit' around in more places (or
to store extra data as a kunit_resource), but I think it's better
overall to pass it around like you have in this case -- it's certainly
more compatible with things which might span threads (e.g. the
workqueues).

Thanks a bunch,
-- David

--00000000000025ddb705ee333bf4
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPnwYJKoZIhvcNAQcCoIIPkDCCD4wCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggz5MIIEtjCCA56gAwIBAgIQeAMYYHb81ngUVR0WyMTzqzANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA3MjgwMDAwMDBaFw0yOTAzMTgwMDAwMDBaMFQxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFz
IFIzIFNNSU1FIENBIDIwMjAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvLe9xPU9W
dpiHLAvX7kFnaFZPuJLey7LYaMO8P/xSngB9IN73mVc7YiLov12Fekdtn5kL8PjmDBEvTYmWsuQS
6VBo3vdlqqXZ0M9eMkjcKqijrmDRleudEoPDzTumwQ18VB/3I+vbN039HIaRQ5x+NHGiPHVfk6Rx
c6KAbYceyeqqfuJEcq23vhTdium/Bf5hHqYUhuJwnBQ+dAUcFndUKMJrth6lHeoifkbw2bv81zxJ
I9cvIy516+oUekqiSFGfzAqByv41OrgLV4fLGCDH3yRh1tj7EtV3l2TngqtrDLUs5R+sWIItPa/4
AJXB1Q3nGNl2tNjVpcSn0uJ7aFPbAgMBAAGjggGKMIIBhjAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFHzM
CmjXouseLHIb0c1dlW+N+/JjMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MHsGCCsG
AQUFBwEBBG8wbTAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL3Jvb3Ry
MzA7BggrBgEFBQcwAoYvaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvcm9vdC1y
My5jcnQwNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIz
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
N0A3bgltvER3q1cGraQJMEwGA1UdIARFMEMwQQYJKwYBBAGgMgEoMDQwMgYIKwYBBQUHAgEWJmh0
dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAwGA1UdEwEB/wQCMAAwgZoGCCsG
AQUFBwEBBIGNMIGKMD4GCCsGAQUFBzABhjJodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9jYS9n
c2F0bGFzcjNzbWltZWNhMjAyMDBIBggrBgEFBQcwAoY8aHR0cDovL3NlY3VyZS5nbG9iYWxzaWdu
LmNvbS9jYWNlcnQvZ3NhdGxhc3Izc21pbWVjYTIwMjAuY3J0MB8GA1UdIwQYMBaAFHzMCmjXouse
LHIb0c1dlW+N+/JjMEYGA1UdHwQ/MD0wO6A5oDeGNWh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20v
Y2EvZ3NhdGxhc3Izc21pbWVjYTIwMjAuY3JsMA0GCSqGSIb3DQEBCwUAA4IBAQAxS21FdvRtCQVc
jgEj+xxSnUr0N9reJlI5J9zRiBCWGxm5yhz965IDka3XVFEbj+beJj/gyHoxbaTGf2AjOufpcMqy
p4mtqc2l4Csudl8QeiBaOUDx4VKADbgxqpjvwD5zRpSKVj4S9y3BJi9xrRdPOm1Z2ZZYxRUxUz7d
2MXoxQsFucGJO5a4CwDBaGgJAqvwCXU5Q64rKVIUBk6mtcd3cDwX+PXqx4QrhHFGq6b6oi37YQ8B
+bhlXqlkLrbPlPFk+4Rh4EaW92iD5g8kvtXCOwvIIvs+15Io0dbpIe2W5UKo2OcyDDFvrOACmUOE
/GuEkhENcyDVyEs/4/N2u9WYMYICajCCAmYCAQEwaDBUMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQ
R2xvYmFsU2lnbiBudi1zYTEqMCgGA1UEAxMhR2xvYmFsU2lnbiBBdGxhcyBSMyBTTUlNRSBDQSAy
MDIwAhABj4peqtakTCOMXLZ2mEqRMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCCW
zdSv/PfuQvDHwNdZH2ByM6r5vevZTQHxen9TwIF1ETAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcB
MBwGCSqGSIb3DQEJBTEPFw0yMjExMjQwODMxMjZaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUD
BAEqMAsGCWCGSAFlAwQBFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsG
CSqGSIb3DQEBBzALBglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAbeZea/NihYTOj34Ng0Wq
dWCUJjwUNnljtMPBNPYf7sxoZZEPHg7vdPB5W2bwmRlaqe2H42b0g5wTLbDpqXJ6PFrMqAKmRW+l
oRVHsq92VjvBA1An1VYAyw7ieJ9rlDh6URPMb9e4d4M7T7dnzY9lI7aBB0g2wYzluTxIUxjUU+2N
zLSExF2ESOUgOeMgVz7OAGtBwI8yA/eUck6X6jG6/H1VX+Z7A0lgdkOBu+cb8IrcWjjT3m7TQPXJ
7MN42EG2TXu1XA6Q5ZS9enNYfCQUZ5Wqk/1RdntNZyhcNpqCSKKO9xdCigLJtNwgG2WGqekG99uq
JnfgkUYK29LD+3Q1sw==
--00000000000025ddb705ee333bf4--

--===============1160036515342292939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1160036515342292939==--
