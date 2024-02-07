Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4B584D074
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Feb 2024 19:02:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED5243EFDD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Feb 2024 18:02:16 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id CBA5D3EECD
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Feb 2024 18:02:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="HgzVZi/u";
	dmarc=none;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.221.44) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33b30fc475eso21844f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Feb 2024 10:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1707328930; x=1707933730; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fTie9X02LUZlS6EEEi4aYupSAjOSD5icxvNUzEugVLM=;
        b=HgzVZi/u8De5OCv2mxh8UlIslZHvkg4vxZZ23yORXvr4Ogu4ku0hYdJBsCpkadaDq7
         3HGf3Zpbbpqm2INvfEYiM6Bd/vLul27iQaQVBpsUIeKkx/NlPqzrZWmbPUsdYZqS+3qd
         Ywm5iyvx0S2klnePGse3ytu+z6x+nwnVqFTEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707328930; x=1707933730;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fTie9X02LUZlS6EEEi4aYupSAjOSD5icxvNUzEugVLM=;
        b=lCg/DXSwgRqaRSdG3qv/zcOiIZavWoX+x1YkKW1Rho1M2eDPL8W9UsdL0aBZOFV2Rz
         CtsGh1FOIBQo5GWsvEJefChr9DILUpHxEUxN0CWM3Gfimm5wCWsSteuz1xU2ru4pBGdL
         DDsy22EjSBTKZGtQGVcANpQrS35gTWj8myYflUjUnV8qWNKHk4sMnaQGeNySIht4pb6+
         NxH35YGaaYB5s1eez6l4AK75urhsgloSqUPh+gSlwVZxatLvsnkw2gckwaPdbFEJ3ibF
         XHgU0ITBSP8YOc3us6kmnlvUxtFEZ1h6zoUNK2NVoLdeXZYQRrCNAwTt1KAGUhMK1qIo
         aCmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVITq6NXVKUHwwxIch+1/7ZYIQ1RpEyX3ul/JAigWxNxMbJayMhHw26G5Re0wwp51+EyC8TcSfdVxyfrIQZYKw1PsbXS40YFq9u+tA7rBc=
X-Gm-Message-State: AOJu0Yze9MaQtepwIbdOkTeX4mHDlwbH3MH8qZOGAWGg03nnp22fck5k
	+LnJDJnfIPWCqDNiIj87Q8OUUTRBpafcW/38pgGi+IVRSM7TsRGjKzfYtusQKw8=
X-Google-Smtp-Source: AGHT+IHqn7asFg55QdASw1RfE27vqthPRSMN0lHrVQGCD6NNTmq34xx1xMEfh/0PEB0EeQNTj5iWsw==
X-Received: by 2002:a5d:6dab:0:b0:33b:4a2b:1b1 with SMTP id u11-20020a5d6dab000000b0033b4a2b01b1mr4139253wrs.4.1707328929685;
        Wed, 07 Feb 2024 10:02:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXppY6D1aoyIYs6e0KXhXxPo1TXWnoCjo4RlxQwApSrZx2LvU5KzTbT6CM67f6UX2fw9wYhxSBIm/Ud4WsASGcKjNgzyrdR8nTeTw0Gcy9rsRw6z9J7Po5+2VDvqswkGypOJqCgnQ8IFUHSwqGxBmWCR/jePAExj6wckyoTh4c2QxAer4WONp1ID69/XUisILMrsgO8L63JQ5oZXAT07Xhg7VGrmifmlAloh8IPP5lLnXfad+4HBW2Q4hCzN1xADgCb+I7FFOz9XCFij7zgUFiDOvzmiC1atUu0qHEFbzVU9o5f2eVR
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id t4-20020a05600001c400b0033b44355a08sm2005948wrx.5.2024.02.07.10.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 10:02:09 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed,  7 Feb 2024 19:02:01 +0100
Message-ID: <20240207180201.118681-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CBA5D3EECD
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.44:from];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
Message-ID-Hash: J3ZZGH2XFG55O4C7XD5SPNJIG5X2HKXS
X-Message-ID-Hash: J3ZZGH2XFG55O4C7XD5SPNJIG5X2HKXS
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: try to catch swiotlb bounce buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3ZZGH2XFG55O4C7XD5SPNJIG5X2HKXS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhleSByYXRoZXIgZnVuZGFtZW50YWxseSBicmVhayB0aGUgZW50aXJlIGNvbmNlcHQgb2YgemVy
byBjb3B5LCBzbyBpZg0KYW4gZXhwb3J0ZXIgbWFuYWdlcyB0byBoYW5kIHRoZXNlIG91dCB0aGlu
Z3Mgd2lsbCBicmVhayBhbGwgb3Zlci4NCg0KTHVja2lseSB0aGVyZSdzIG5vdCB0b28gbWFueSBj
YXNlIHRoYXQgdXNlDQpzd2lvdGxiX3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UvY3B1KCk6DQoNCi0g
VGhlIGdlbmVyaWMgaW9tbXUgZG1hLWFwaSBjb2RlIGluIGRyaXZlcnMvaW9tbXUvZG1hLWlvbW11
LmMuIFdlIGNhbg0KICBjYXRjaCB0aGF0IHdpdGggc2dfZG1hX2lzX3N3aW90bGIoKSByZWxpYWJs
eS4NCg0KLSBUaGUgZ2VuZXJpYyBkaXJlY3QgZG1hIGNvZGUgaW4ga2VybmVsL2RtYS9kaXJlY3Qu
Yy4gV2UgY2FuIG1vc3RseQ0KICBjYXRjaCB0aGF0IHdpdGggbG9va2luZyBmb3IgYSBOVUxMIGRt
YV9vcHMsIGV4Y2VwdCBmb3Igc29tZSBwb3dlcnBjDQogIHNwZWNpYWwgY2FzZXMuDQoNCi0gWGVu
LCB3aGljaCBJIGRvbid0IGJvdGhlciB0byBjYXRjaCBoZXJlLg0KDQpJbXBsZW1lbnQgdGhlc2Ug
Y2hlY2tzIGluIGRtYV9idWZfbWFwX2F0dGFjaG1lbnQgd2hlbg0KQ09ORklHX0RNQV9BUElfREVC
VUcgaXMgZW5hYmxlZC4NCg0KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+DQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9y
Zz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcNCkNjOiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4NCi0tLQ0K
RW50aXJlbHkgdW50ZXN0ZWQsIGJ1dCBzaW5jZSBJIHNlbnQgdGhlIG1haWwgd2l0aCB0aGUgaWRl
YSBJIGZpZ3VyZWQgSQ0KbWlnaHQgYXMgd2VsbCB0eXBlIGl0IHVwIGFmdGVyIEkgcmVhbGl6ZWQg
dGhlcmUncyBhIGxvdCBmZXdlciBjYXNlcyB0bw0KY2hlY2suIFRoYXQgaXMsIGlmIEkgaGF2ZW4n
dCBjb21wbGV0ZWx5IG1pc3JlYWQgdGhlIGRtYS1hcGkgYW5kIHN3aW90bGINCmNvZGUuDQotU2lt
YQ0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE3ICsrKysrKysrKysrKysrKysr
DQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCBk
MWU3ZjgyM2ZiZGIuLmQ2Zjk1NTIzZjk5NSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC0yOCw2ICsyOCwx
MiBAQA0KICNpbmNsdWRlIDxsaW51eC9tb3VudC5oPg0KICNpbmNsdWRlIDxsaW51eC9wc2V1ZG9f
ZnMuaD4NCiANCisjaWZkZWYgQ09ORklHX0RNQV9BUElfREVCVUcNCisjaW5jbHVkZSA8bGludXgv
ZG1hLWRpcmVjdC5oPg0KKyNpbmNsdWRlIDxsaW51eC9kbWEtbWFwLW9wcy5oPg0KKyNpbmNsdWRl
IDxsaW51eC9zd2lvdGxiLmg+DQorI2VuZGlmDQorDQogI2luY2x1ZGUgPHVhcGkvbGludXgvZG1h
LWJ1Zi5oPg0KICNpbmNsdWRlIDx1YXBpL2xpbnV4L21hZ2ljLmg+DQogDQpAQCAtMTE0OSwxMCAr
MTE1NSwxMyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KICNpZmRlZiBDT05GSUdfRE1BX0FQSV9ERUJV
Rw0KIAlpZiAoIUlTX0VSUihzZ190YWJsZSkpIHsNCiAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7
DQorCQlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBhdHRhY2gtPmRldjsNCiAJCXU2NCBhZGRyOw0KIAkJ
aW50IGxlbjsNCiAJCWludCBpOw0KIA0KKwkJYm9vbCBpc19kaXJlY3RfZG1hID0gIWdldF9kbWFf
b3BzKGRldik7DQorDQogCQlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9zZyhzZ190YWJsZSwgc2csIGkp
IHsNCiAJCQlhZGRyID0gc2dfZG1hX2FkZHJlc3Moc2cpOw0KIAkJCWxlbiA9IHNnX2RtYV9sZW4o
c2cpOw0KQEAgLTExNjAsNyArMTE2OSwxNSBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFw
X2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIAkJCQlwcl9k
ZWJ1ZygiJXM6IGFkZHIgJWxseCBvciBsZW4gJXggaXMgbm90IHBhZ2UgYWxpZ25lZCFcbiIsDQog
CQkJCQkgX19mdW5jX18sIGFkZHIsIGxlbik7DQogCQkJfQ0KKw0KKwkJCWlmIChpc19kaXJlY3Rf
ZG1hKSB7DQorCQkJCXBoeXNfYWRkcl90IHBhZGRyID0gZG1hX3RvX3BoeXMoZGV2LCBhZGRyKTsN
CisNCisJCQkJV0FSTl9PTl9PTkNFKGlzX3N3aW90bGJfYnVmZmVyKGRldiwgcGFkZHIpKTsNCisJ
CQl9DQogCQl9DQorDQorCQlXQVJOX09OX09OQ0Uoc2dfZG1hX2lzX3N3aW90bGIoc2cpKTsNCiAJ
fQ0KICNlbmRpZiAvKiBDT05GSUdfRE1BX0FQSV9ERUJVRyAqLw0KIAlyZXR1cm4gc2dfdGFibGU7
DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
