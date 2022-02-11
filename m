Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 916C94B265D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C93563EEC1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:05 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id 709653EEC4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:15 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id h22so4606889ejl.12
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=B3EeKT8jgVo8Digjn1dxqu4KOtw+ELIqN+RGzTZ3mh8=;
        b=MvkNjXSZQMzC4ePO4XbfsmNMs/cjyzcKNJXaG97VydhSQkEk/uROk5UCPTXewvgzbf
         Ot0ZwGq/vi/TVDAFP2dbuk0l0Y/2dyOv/L7O837kmYpSCmxMt8yzDiRxEILrIg3/mdqe
         TqVjLzn2uDzAmD+pPxo2wGzChK8738L7kgvJi1dg9ZDg+mF6hTs5q3dVZ12Id0O9s4jQ
         Q0MN/2AKm7w29XN1OXHCGrOmqhBSzQoSHSAQUMMm7XyuLimeNXt66G577be4XL3uD1l1
         pwMwHpBOPIDiIv2HCtbDFPsbKFnvt//IfF1eaCypoy3bgXX908pZ7n94dW6yIZjRmPnE
         X4iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B3EeKT8jgVo8Digjn1dxqu4KOtw+ELIqN+RGzTZ3mh8=;
        b=1NuXlqZ53Qc3ESGpZpDb9MXFdEJRHFpDNRINXufczDml69zCeu7DomcYJfQRvX9YCF
         bDLDEriHPq7BJQq8pmnFb/oY/lt9kjUwEW55lD/LjC9jpFcEYQpUUxYNw0oIntGgRyxz
         jODBd6dDOdlrrejGg3OxHVuV4S3bVL2STiQid4YZo9h2nBLbhnOTT/yG0yu7dnGz03ar
         7TMu3h9E2UvYxuLNDTs1rc66v61w8lYFsrMNmq/s+lVB9RxbONK0fYJOPrgH02Fwgwb9
         tLKAIqU3sMi361adhATehG1Ofp9CjTTYhiwb7U0hHPjxH3PkEpFcg6Pru124HcZsWsHe
         EFPg==
X-Gm-Message-State: AOAM533yWg7B8D9o2MQcVWs+NHPb21UjcckgB/E9dh44fh68wfl1mLoA
	T6fn3HPGW88ej2r0om4SLYM=
X-Google-Smtp-Source: ABdhPJx+xQ+Ga2gLt/GxM8aUaH7c9FQdcWW6VrhtRU27Ud4JaBdv/J0itcLC7h7zzf4FWWPp1R8oKQ==
X-Received: by 2002:a17:906:73cc:: with SMTP id n12mr58119ejl.109.1644583814555;
        Fri, 11 Feb 2022 04:50:14 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:49 +0100
Message-Id: <20220211125003.918447-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: YOOFGIN7W7BT4K4HYZT4BYGM6XQME2TM
X-Message-ID-Hash: YOOFGIN7W7BT4K4HYZT4BYGM6XQME2TM
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/23] drm/amdgpu: use dma_resv_for_each_fence for CS workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOOFGIN7W7BT4K4HYZT4BYGM6XQME2TM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R2V0IHRoZSB3cml0ZSBmZW5jZSB1c2luZyBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSBpbnN0ZWFk
IG9mIGFjY2Vzc2luZw0KaXQgbWFudWFsbHkuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMg
fCA5ICsrKysrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
Y3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jDQppbmRleCBlODQ0
MGQzMDY0OTYuLmFlODNkZjRkMGMxMCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfY3MuYw0KQEAgLTEyNjcsNiArMTI2Nyw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1p
dChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwNCiAJYW1kZ3B1X2JvX2xpc3RfZm9yX2VhY2hf
ZW50cnkoZSwgcC0+Ym9fbGlzdCkgew0KIAkJc3RydWN0IGRtYV9yZXN2ICpyZXN2ID0gZS0+dHYu
Ym8tPmJhc2UucmVzdjsNCiAJCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0gZS0+Y2hh
aW47DQorCQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7DQorCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsNCiANCiAJCWlmICghY2hhaW4pDQogCQkJY29udGludWU7DQpAQCAtMTI3Niw5ICsx
Mjc4LDEwIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3Bh
cnNlciAqcCwNCiAJCSAqIHN1Ym1pc3Npb24gaW4gYSBkbWFfZmVuY2VfY2hhaW4gYW5kIGFkZCBp
dCBhcyBleGNsdXNpdmUNCiAJCSAqIGZlbmNlLg0KIAkJICovDQotCQlkbWFfZmVuY2VfY2hhaW5f
aW5pdChjaGFpbiwgZG1hX3Jlc3ZfZXhjbF9mZW5jZShyZXN2KSwNCi0JCQkJICAgICBkbWFfZmVu
Y2VfZ2V0KHAtPmZlbmNlKSwgMSk7DQotDQorCQlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vy
c29yLCByZXN2LCBmYWxzZSwgZmVuY2UpIHsNCisJCQlicmVhazsNCisJCX0NCisJCWRtYV9mZW5j
ZV9jaGFpbl9pbml0KGNoYWluLCBmZW5jZSwgZG1hX2ZlbmNlX2dldChwLT5mZW5jZSksIDEpOw0K
IAkJcmN1X2Fzc2lnbl9wb2ludGVyKHJlc3YtPmZlbmNlX2V4Y2wsICZjaGFpbi0+YmFzZSk7DQog
CQllLT5jaGFpbiA9IE5VTEw7DQogCX0NCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
