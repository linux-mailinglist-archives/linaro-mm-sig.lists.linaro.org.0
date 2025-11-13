Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 537C6C5814A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:56:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 759563F880
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:56:00 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id DB6873F80D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=fA98fP5t;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b727f452fffso325797066b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045623; x=1763650423; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tQnKR6BVkVq/lytryILuoJ7y27PRk2N9J9MO3CCJcto=;
        b=fA98fP5tULPXlexkN6L/1sjWN5CuJnHUH4D6gd13mMcvzURIi7O3zUUrezokk8FJ+P
         vIKPfSye4t8qJyIDNl4OL5xC57dEKlhV6+Rzw6rvoSB1/nG0tgVdrlrpxRvdF980Ia6c
         nueJ1DZkeP7OWGn8CvHq0E4KiGqLr7HhXwqqrKymdQSQw+MEucFosXzw5dsL03D+ZZXF
         70GLzUGUmjxCkjyRaYIWib407uBAZU5zdv3a6PnIX8rO4b8Q8nxFa6Do23kIr7Aum+bL
         hO6jzpC+je1TJ0FKwt4peVFhHqUCRdquQctS+wVY4PU2FEYr6EsGf/9qQeyNeCMC74uh
         KoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045623; x=1763650423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQnKR6BVkVq/lytryILuoJ7y27PRk2N9J9MO3CCJcto=;
        b=DbWL8siNyq9U6avf+Dvp835Wb3Ag7Yqp+/BEaSThrFfi+XrWQ5Ow7SzKfybInvxdDW
         5nhdmMFYpE7/vGaaaxbFmkJhV0hg81Prmx8YyU/kGsrD3Y3YhioPsqqmBAfWE4bWE549
         xDAU2zyRJPcc6kHL+z7z3W6Gn+DsTS6yxryHATCdQ9yNs4J1foX6oTeJbSojEiAoRdSJ
         gCzeP2gbbhPGQ/VIbYtec2G0mMAHWG7JOihgQkhiHZr2hL6LeumGOLibrmbvqyvivOhw
         WzNS2KJKkqfnsYMdQCP2dg5g8FlD7mauVIc1RubIV5oRYjbORSpiMuAFHt2toVhcrZhk
         y+Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXysJiaW2CwR0eL5Qpb0FFpIiAAtArXxJcau2d5LykuffU3w6F6EMtq0animUdP8XLQao3U0a0kSefTPJNP@lists.linaro.org
X-Gm-Message-State: AOJu0YyORJCqTbTNgEJ4rrTWScjbQgfptefuk2ciRQWPbihFAn15b512
	en8FNYN3v9kdWtlnYdEd5ZVn0FiRrK5GPvp6+79Jod4MLpITiIYaWsCU
X-Gm-Gg: ASbGncsfgvyyMNM0L0lXI/REbTy4o3GSyUlNBz2TvLfOPkqRSUKCboBzfZ7FwG7TSDE
	8iPi3IrTcDiqpTMOGfrQku3y7KiijURPudX0/iH/RaRarBBlFeGQsKCKDHn/KY5wlL+dBFub1wx
	nnN1Ljk3d38C25eEKn7QrpWsyyZAviMhugMUE2CD1lSzMBeVCvpvF2dNj7Qm+sNg1dSJ9HBpg1g
	15LjOCtyJVJZuBDYpNSuwOIcz/MZNIcCkJyPu2LgmngvluZUuApUmo6QiLwon8+ROF2m+BuQK2Z
	UBPFWm5G0/QkYXeaiz6/zbX28eFkF6r0H6UutUPXTjykIOgpvewwCbe7RRLDn8CDVpWfVa9v/xX
	Z3ms34Ix4lsAw5kza6lRcK0uIVA6QSNHMynBV4A/TYnY58bayhOzsrU3RLaS5kZIOeUzf8GhZUz
	u7ccYWfKaKbzA=
X-Google-Smtp-Source: AGHT+IFYHRIAnIeYEGi7huimmcPbHNOgv11CUklwEqIUYs8aWn9mTAXkB9EfeqZtLICy9hCrUMs0kw==
X-Received: by 2002:a17:907:2d26:b0:b72:6224:7e95 with SMTP id a640c23a62f3a-b7348056638mr368571866b.1.1763045622794;
        Thu, 13 Nov 2025 06:53:42 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:42 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:47 +0100
Message-ID: <20251113145332.16805-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DB6873F80D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3CIEHMRLF3ZY3NFRHKEODTBBUW2WDDHT
X-Message-ID-Hash: 3CIEHMRLF3ZY3NFRHKEODTBBUW2WDDHT
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/18] drm/amdgpu: independence for the amdgpu_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3CIEHMRLF3ZY3NFRHKEODTBBUW2WDDHT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgYWxsb3cgYW1kZ3B1X2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9k
dWxlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2Uu
YyB8IDYzICsrKysrKystLS0tLS0tLS0tLS0tLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3JpbmcuaCAgfCAgMSAtDQogMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25z
KCspLCA0NCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2ZlbmNlLmMNCmluZGV4IGM3ODQzZTMzNjMxMC4uOTkwZmNiYmU5MGEwIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMNCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQpAQCAtMTEyLDggKzExMiw3IEBAIGlu
dCBhbWRncHVfZmVuY2VfZW1pdChzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBhbWRn
cHVfZmVuY2UgKmFmLA0KIAlhZi0+cmluZyA9IHJpbmc7DQogDQogCXNlcSA9ICsrcmluZy0+ZmVu
Y2VfZHJ2LnN5bmNfc2VxOw0KLQlkbWFfZmVuY2VfaW5pdChmZW5jZSwgJmFtZGdwdV9mZW5jZV9v
cHMsDQotCQkgICAgICAgJnJpbmctPmZlbmNlX2Rydi5sb2NrLA0KKwlkbWFfZmVuY2VfaW5pdChm
ZW5jZSwgJmFtZGdwdV9mZW5jZV9vcHMsIE5VTEwsDQogCQkgICAgICAgYWRldi0+ZmVuY2VfY29u
dGV4dCArIHJpbmctPmlkeCwgc2VxKTsNCiANCiAJYW1kZ3B1X3JpbmdfZW1pdF9mZW5jZShyaW5n
LCByaW5nLT5mZW5jZV9kcnYuZ3B1X2FkZHIsDQpAQCAtNDY3LDcgKzQ2Niw2IEBAIGludCBhbWRn
cHVfZmVuY2VfZHJpdmVyX2luaXRfcmluZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpDQogCXRp
bWVyX3NldHVwKCZyaW5nLT5mZW5jZV9kcnYuZmFsbGJhY2tfdGltZXIsIGFtZGdwdV9mZW5jZV9m
YWxsYmFjaywgMCk7DQogDQogCXJpbmctPmZlbmNlX2Rydi5udW1fZmVuY2VzX21hc2sgPSByaW5n
LT5udW1faHdfc3VibWlzc2lvbiAqIDIgLSAxOw0KLQlzcGluX2xvY2tfaW5pdCgmcmluZy0+ZmVu
Y2VfZHJ2LmxvY2spOw0KIAlyaW5nLT5mZW5jZV9kcnYuZmVuY2VzID0ga2NhbGxvYyhyaW5nLT5u
dW1faHdfc3VibWlzc2lvbiAqIDIsIHNpemVvZih2b2lkICopLA0KIAkJCQkJIEdGUF9LRVJORUwp
Ow0KIA0KQEAgLTY1NCwxNiArNjUyLDIwIEBAIHZvaWQgYW1kZ3B1X2ZlbmNlX2RyaXZlcl9zZXRf
ZXJyb3Ioc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCBpbnQgZXJyb3IpDQogCXN0cnVjdCBhbWRn
cHVfZmVuY2VfZHJpdmVyICpkcnYgPSAmcmluZy0+ZmVuY2VfZHJ2Ow0KIAl1bnNpZ25lZCBsb25n
IGZsYWdzOw0KIA0KLQlzcGluX2xvY2tfaXJxc2F2ZSgmZHJ2LT5sb2NrLCBmbGFncyk7DQorCXJj
dV9yZWFkX2xvY2soKTsNCiAJZm9yICh1bnNpZ25lZCBpbnQgaSA9IDA7IGkgPD0gZHJ2LT5udW1f
ZmVuY2VzX21hc2s7ICsraSkgew0KIAkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQogDQotCQlm
ZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZHJ2LT5mZW5jZXNbaV0sDQotCQkJCQkJ
ICBsb2NrZGVwX2lzX2hlbGQoJmRydi0+bG9jaykpOw0KLQkJaWYgKGZlbmNlICYmICFkbWFfZmVu
Y2VfaXNfc2lnbmFsZWRfbG9ja2VkKGZlbmNlKSkNCisJCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9y
Y3UoZHJ2LT5mZW5jZXNbaV0pOw0KKwkJaWYgKCFmZW5jZSkNCisJCQljb250aW51ZTsNCisNCisJ
CWRtYV9mZW5jZV9sb2NrX2lycXNhdmUoZmVuY2UsIGZsYWdzKTsNCisJCWlmICghZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkX2xvY2tlZChmZW5jZSkpDQogCQkJZG1hX2ZlbmNlX3NldF9lcnJvcihmZW5j
ZSwgZXJyb3IpOw0KKwkJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLCBmbGFncyk7
DQogCX0NCi0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZHJ2LT5sb2NrLCBmbGFncyk7DQorCXJj
dV9yZWFkX3VubG9jaygpOw0KIH0NCiANCiAvKioNCkBAIC03MTQsMTYgKzcxNiwxOSBAQCB2b2lk
IGFtZGdwdV9mZW5jZV9kcml2ZXJfZ3VpbHR5X2ZvcmNlX2NvbXBsZXRpb24oc3RydWN0IGFtZGdw
dV9mZW5jZSAqYWYpDQogCXNlcSA9IHJpbmctPmZlbmNlX2Rydi5zeW5jX3NlcSAmIHJpbmctPmZl
bmNlX2Rydi5udW1fZmVuY2VzX21hc2s7DQogDQogCS8qIG1hcmsgYWxsIGZlbmNlcyBmcm9tIHRo
ZSBndWlsdHkgY29udGV4dCB3aXRoIGFuIGVycm9yICovDQotCXNwaW5fbG9ja19pcnFzYXZlKCZy
aW5nLT5mZW5jZV9kcnYubG9jaywgZmxhZ3MpOw0KKwlyY3VfcmVhZF9sb2NrKCk7DQogCWRvIHsN
CiAJCWxhc3Rfc2VxKys7DQogCQlsYXN0X3NlcSAmPSByaW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNl
c19tYXNrOw0KIA0KIAkJcHRyID0gJnJpbmctPmZlbmNlX2Rydi5mZW5jZXNbbGFzdF9zZXFdOw0K
LQkJcmN1X3JlYWRfbG9jaygpOw0KLQkJdW5wcm9jZXNzZWQgPSByY3VfZGVyZWZlcmVuY2UoKnB0
cik7DQorCQl1bnByb2Nlc3NlZCA9IGRtYV9mZW5jZV9nZXRfcmN1KCpwdHIpOw0KKw0KKwkJaWYg
KCF1bnByb2Nlc3NlZCkNCisJCQljb250aW51ZTsNCiANCi0JCWlmICh1bnByb2Nlc3NlZCAmJiAh
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZCh1bnByb2Nlc3NlZCkpIHsNCisJCWRtYV9mZW5j
ZV9sb2NrX2lycXNhdmUodW5wcm9jZXNzZWQsIGZsYWdzKTsNCisJCWlmIChkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKHVucHJvY2Vzc2VkKSkgew0KIAkJCWZlbmNlID0gY29udGFpbmVyX29m
KHVucHJvY2Vzc2VkLCBzdHJ1Y3QgYW1kZ3B1X2ZlbmNlLCBiYXNlKTsNCiANCiAJCQlpZiAoZmVu
Y2UgPT0gYWYpDQpAQCAtNzMxLDkgKzczNiwxMCBAQCB2b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJf
Z3VpbHR5X2ZvcmNlX2NvbXBsZXRpb24oc3RydWN0IGFtZGdwdV9mZW5jZSAqYWYpDQogCQkJZWxz
ZSBpZiAoZmVuY2UtPmNvbnRleHQgPT0gYWYtPmNvbnRleHQpDQogCQkJCWRtYV9mZW5jZV9zZXRf
ZXJyb3IoJmZlbmNlLT5iYXNlLCAtRUNBTkNFTEVEKTsNCiAJCX0NCi0JCXJjdV9yZWFkX3VubG9j
aygpOw0KKwkJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKHVucHJvY2Vzc2VkLCBmbGFncyk7
DQorCQlkbWFfZmVuY2VfcHV0KHVucHJvY2Vzc2VkKTsNCiAJfSB3aGlsZSAobGFzdF9zZXEgIT0g
c2VxKTsNCi0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZs
YWdzKTsNCisJcmN1X3JlYWRfdW5sb2NrKCk7DQogCS8qIHNpZ25hbCB0aGUgZ3VpbHR5IGZlbmNl
ICovDQogCWFtZGdwdV9mZW5jZV93cml0ZShyaW5nLCAodTMyKWFmLT5iYXNlLnNlcW5vKTsNCiAJ
YW1kZ3B1X2ZlbmNlX3Byb2Nlc3MocmluZyk7DQpAQCAtODIzLDM5ICs4MjksMTAgQEAgc3RhdGlj
IGJvb2wgYW1kZ3B1X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZikN
CiAJcmV0dXJuIHRydWU7DQogfQ0KIA0KLS8qKg0KLSAqIGFtZGdwdV9mZW5jZV9mcmVlIC0gZnJl
ZSB1cCB0aGUgZmVuY2UgbWVtb3J5DQotICoNCi0gKiBAcmN1OiBSQ1UgY2FsbGJhY2sgaGVhZA0K
LSAqDQotICogRnJlZSB1cCB0aGUgZmVuY2UgbWVtb3J5IGFmdGVyIHRoZSBSQ1UgZ3JhY2UgcGVy
aW9kLg0KLSAqLw0KLXN0YXRpYyB2b2lkIGFtZGdwdV9mZW5jZV9mcmVlKHN0cnVjdCByY3VfaGVh
ZCAqcmN1KQ0KLXsNCi0Jc3RydWN0IGRtYV9mZW5jZSAqZiA9IGNvbnRhaW5lcl9vZihyY3UsIHN0
cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQotDQotCS8qIGZyZWUgZmVuY2Vfc2xhYiBpZiBpdCdzIHNl
cGFyYXRlZCBmZW5jZSovDQotCWtmcmVlKHRvX2FtZGdwdV9mZW5jZShmKSk7DQotfQ0KLQ0KLS8q
Kg0KLSAqIGFtZGdwdV9mZW5jZV9yZWxlYXNlIC0gY2FsbGJhY2sgdGhhdCBmZW5jZSBjYW4gYmUg
ZnJlZWQNCi0gKg0KLSAqIEBmOiBmZW5jZQ0KLSAqDQotICogVGhpcyBmdW5jdGlvbiBpcyBjYWxs
ZWQgd2hlbiB0aGUgcmVmZXJlbmNlIGNvdW50IGJlY29tZXMgemVyby4NCi0gKiBJdCBqdXN0IFJD
VSBzY2hlZHVsZXMgZnJlZWluZyB1cCB0aGUgZmVuY2UuDQotICovDQotc3RhdGljIHZvaWQgYW1k
Z3B1X2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCi17DQotCWNhbGxfcmN1KCZm
LT5yY3UsIGFtZGdwdV9mZW5jZV9mcmVlKTsNCi19DQotDQogc3RhdGljIGNvbnN0IHN0cnVjdCBk
bWFfZmVuY2Vfb3BzIGFtZGdwdV9mZW5jZV9vcHMgPSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBh
bWRncHVfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KIAkuZ2V0X3RpbWVsaW5lX25hbWUgPSBhbWRn
cHVfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQogCS5lbmFibGVfc2lnbmFsaW5nID0gYW1kZ3B1
X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcsDQotCS5yZWxlYXNlID0gYW1kZ3B1X2ZlbmNlX3JlbGVh
c2UsDQogfTsNCiANCiAvKg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9yaW5nLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5o
DQppbmRleCA3YTI3YzZjNGJiNDQuLjljYmY2MzQ1NDAwNCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmgNCkBAIC0xMjUsNyArMTI1LDYgQEAgc3RydWN0IGFtZGdw
dV9mZW5jZV9kcml2ZXIgew0KIAl1bnNpZ25lZAkJCWlycV90eXBlOw0KIAlzdHJ1Y3QgdGltZXJf
bGlzdAkJZmFsbGJhY2tfdGltZXI7DQogCXVuc2lnbmVkCQkJbnVtX2ZlbmNlc19tYXNrOw0KLQlz
cGlubG9ja190CQkJbG9jazsNCiAJc3RydWN0IGRtYV9mZW5jZQkJKipmZW5jZXM7DQogfTsNCiAN
Ci0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
