Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A228A3117B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 17:32:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3AFD42501
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 16:32:24 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id BAD434493F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 16:31:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kiDGXmAy;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5de5a853090so7394865a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 08:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739291475; x=1739896275; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6SZKMir/CCVtFZIbZW4Fj8Q80/bYL9FqnHdhMsDaITQ=;
        b=kiDGXmAyRgoWAmtegpmCZ5Y8kTZJv9U67qB/TSSwJe6zVpgODkemmU4xHySz+vxDVQ
         kFZXcH/1f+wlgvNoOQ1IaBiLkpSeVaxJ71/P1vw9Uxzse+8QDvSnSMX360PmhT/NLw4/
         6UdNSBLesvahVLJfNpNwTyHMkLZoIf5UGKFjUg83m39PBQowVabB3TmJxALankBKwby2
         606w79mCadKLD5UFATvdDNG0WW0UWTIy/2GX11FgdynAxhskA41lnTtGi29xGFOrTbGU
         xk/9Xxyzp88x/jadclaKDu0Eq2MiKbZnHLy2OigZcQ6p9C/0JBZiDAB5QHr7U/hkYxCT
         CoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739291475; x=1739896275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6SZKMir/CCVtFZIbZW4Fj8Q80/bYL9FqnHdhMsDaITQ=;
        b=oBOLc459DukhQFm/lV0b5QSbpO8r75rO20tycVtIOgoHr6IiON8zPAGHT9V8jtfH+T
         FjapG9Wh67QFZghTdcLcLpLJyY7wW/kR+x2kGHQlmqcVLplJAfgPs7SnBR5D/IpnpwS2
         oY/6OAXZLeXKK9LOFJh0uGMIdzzWIXHHyG58CqCL1V7OKGBsfzz4qORJsIcm7A3qhEwo
         1/juSEyyeCv+2KH51kBsR2kDLkdoRhs3oHnFWSSGXUNB5b3X7rB25HdKOuMLrUO2yf+z
         lSg/xOzY7zi5kLex9TCxBVuW+GBK5CAn8Wa+MX4l5tOQlQm3wgRrKTYPeVImB36c0EX5
         0+Ug==
X-Forwarded-Encrypted: i=1; AJvYcCVHlgClTIEwo3rgFLUgO+IgSXEhoUyeqQehbYN+ws/eLm3yvKh6jhUG/TnkFzG161dLGYtzM9mhh5ni3TyL@lists.linaro.org
X-Gm-Message-State: AOJu0YzncT+0W2k7T9GojPi+kI7+z9wGy1VkVF9MnllxxpP0PPkoOylq
	59Oyvwq4+zRdqvCbspdaNoHPu1pVN7KmHQW+tGZaQ0w/lOuMUeI0
X-Gm-Gg: ASbGncuuDg0ygML5mNG7Cb5M1E7RACn9LTd1wpjsK8MTNSKykN1uincBOa8IKzuo/DE
	0TeGM33tHillbl41G7BoysQyPSph5XwQ/9kNGqmiC4WovufFncI8XSUqnG8THXt6O/bfNWAdHKf
	EJMckL4Wn51kTzXZs0UW4B589HRA5DO73GFx3OgC8N3yzuHsv/FlYuUI46gWPXf7uAJqDsMyTOp
	WkR+8eKiX+Hn01jDzINe93FZd7VaRQoJ6M4rvtn1CJZO8r09FgH8IitMvd1/DHVJmrzWS2Q7dK0
	0oyAl+hus4Qio5tN2aIrhL2/RBHB
X-Google-Smtp-Source: AGHT+IEpS2WYCCXVKPTuo/qumvE+XCs2EJBxozM2SlFTakSrMGFjjYts4TVIa5Yz3Yb26t4kH7nU+A==
X-Received: by 2002:a05:6402:42c8:b0:5dc:1289:7f1c with SMTP id 4fb4d7f45d1cf-5de450d6951mr20692891a12.29.1739291474370;
        Tue, 11 Feb 2025 08:31:14 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154a:1300:5b91:7670:e404:c65a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7ade9sm9838748a12.25.2025.02.11.08.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 08:31:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	tzimmermann@suse.de,
	simona@ffwll.ch,
	dmitry.osipenko@collabora.com,
	tvrtko.ursulin@igalia.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Tue, 11 Feb 2025 17:31:07 +0100
Message-Id: <20250211163109.12200-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211163109.12200-1-christian.koenig@amd.com>
References: <20250211163109.12200-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BAD434493F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.44:from];
	RCPT_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.948];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.208.44:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: SCCRMU5HJEIN4TNIY3UX543O74HMVRWM
X-Message-ID-Hash: SCCRMU5HJEIN4TNIY3UX543O74HMVRWM
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] dma-buf/dma-fence: remove unnecessary callbacks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCCRMU5HJEIN4TNIY3UX543O74HMVRWM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGZlbmNlX3ZhbHVlX3N0ciBhbmQgdGltZWxpbmVfdmFsdWVfc3RyIGNhbGxiYWNrcyB3ZXJl
IGp1c3QgYW4NCnVubmVjZXNzYXJ5IGFic3RyYWN0aW9uIGluIHRoZSBTVyBzeW5jIGltcGxlbWVu
dGF0aW9uLg0KDQpUaGUgb25seSBjYWxsZXIgb2YgdGhvc2UgY2FsbGJhY2tzIGFscmVhZHkga25l
dyB0aGF0IHRoZSBmZW5jZSBpbg0KcXVlc3Rpb25zIGlzIGEgdGltZWxpbmVfZmVuY2UuIFNvIHBy
aW50IHRoZSB2YWx1ZXMgZGlyZWN0bHkgaW5zdGVhZA0Kb2YgdXNpbmcgYSByZWRpcmVjdGlvbi4N
Cg0KQWRkaXRpb25hbCB0byB0aGF0IHJlbW92ZSB0aGUgaW1wbGVtZW50YXRpb25zIGZyb20gdmly
dGdwdSBhbmQgdmdlbS4NCkFzIGZhciBhcyBJIGNhbiBzZWUgdGhvc2Ugd2VyZSBuZXZlciB1c2Vk
IGluIHRoZSBmaXJzdCBwbGFjZS4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMu
YyAgICAgICAgICAgICAgfCAxNiAtLS0tLS0tLS0tLS0tLS0tDQogZHJpdmVycy9kbWEtYnVmL3N5
bmNfZGVidWcuYyAgICAgICAgICAgfCAyMSArKy0tLS0tLS0tLS0tLS0tLS0tLS0NCiBkcml2ZXJz
L2dwdS9kcm0vdmdlbS92Z2VtX2ZlbmNlLmMgICAgICB8IDE1IC0tLS0tLS0tLS0tLS0tLQ0KIGRy
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9mZW5jZS5jIHwgMTYgLS0tLS0tLS0tLS0tLS0t
LQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICAgICAgICAgICAgIHwgMjEgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQogNSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDg3IGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9zd19zeW5jLmMNCmluZGV4IGY1OTA1ZDY3ZGVkYi4uODQ5MjgwYWU3OWE5IDEw
MDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KKysrIGIvZHJpdmVycy9kbWEt
YnVmL3N3X3N5bmMuYw0KQEAgLTE3MywyMCArMTczLDYgQEAgc3RhdGljIGJvb2wgdGltZWxpbmVf
ZmVuY2Vfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQogCXJldHVybiAhX19kbWFf
ZmVuY2VfaXNfbGF0ZXIoZmVuY2UtPnNlcW5vLCBwYXJlbnQtPnZhbHVlLCBmZW5jZS0+b3BzKTsN
CiB9DQogDQotc3RhdGljIHZvaWQgdGltZWxpbmVfZmVuY2VfdmFsdWVfc3RyKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLA0KLQkJCQkgICAgY2hhciAqc3RyLCBpbnQgc2l6ZSkNCi17DQotCXNucHJp
bnRmKHN0ciwgc2l6ZSwgIiVsbGQiLCBmZW5jZS0+c2Vxbm8pOw0KLX0NCi0NCi1zdGF0aWMgdm9p
ZCB0aW1lbGluZV9mZW5jZV90aW1lbGluZV92YWx1ZV9zdHIoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsDQotCQkJCQkgICAgIGNoYXIgKnN0ciwgaW50IHNpemUpDQotew0KLQlzdHJ1Y3Qgc3luY190
aW1lbGluZSAqcGFyZW50ID0gZG1hX2ZlbmNlX3BhcmVudChmZW5jZSk7DQotDQotCXNucHJpbnRm
KHN0ciwgc2l6ZSwgIiVkIiwgcGFyZW50LT52YWx1ZSk7DQotfQ0KLQ0KIHN0YXRpYyB2b2lkIHRp
bWVsaW5lX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVf
dCBkZWFkbGluZSkNCiB7DQogCXN0cnVjdCBzeW5jX3B0ICpwdCA9IGRtYV9mZW5jZV90b19zeW5j
X3B0KGZlbmNlKTsNCkBAIC0yMDgsOCArMTk0LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wcyA9IHsNCiAJLmdldF90aW1lbGluZV9uYW1lID0g
dGltZWxpbmVfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQogCS5zaWduYWxlZCA9IHRpbWVsaW5l
X2ZlbmNlX3NpZ25hbGVkLA0KIAkucmVsZWFzZSA9IHRpbWVsaW5lX2ZlbmNlX3JlbGVhc2UsDQot
CS5mZW5jZV92YWx1ZV9zdHIgPSB0aW1lbGluZV9mZW5jZV92YWx1ZV9zdHIsDQotCS50aW1lbGlu
ZV92YWx1ZV9zdHIgPSB0aW1lbGluZV9mZW5jZV90aW1lbGluZV92YWx1ZV9zdHIsDQogCS5zZXRf
ZGVhZGxpbmUgPSB0aW1lbGluZV9mZW5jZV9zZXRfZGVhZGxpbmUsDQogfTsNCiANCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNf
ZGVidWcuYw0KaW5kZXggMjM3YmNlMjFkMWU3Li4yNzBkYWFlN2Q4OWEgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19k
ZWJ1Zy5jDQpAQCAtODIsMjUgKzgyLDggQEAgc3RhdGljIHZvaWQgc3luY19wcmludF9mZW5jZShz
dHJ1Y3Qgc2VxX2ZpbGUgKnMsDQogCQlzZXFfcHJpbnRmKHMsICJAJWxsZC4lMDlsZCIsIChzNjQp
dHM2NC50dl9zZWMsIHRzNjQudHZfbnNlYyk7DQogCX0NCiANCi0JaWYgKGZlbmNlLT5vcHMtPnRp
bWVsaW5lX3ZhbHVlX3N0ciAmJg0KLQkJZmVuY2UtPm9wcy0+ZmVuY2VfdmFsdWVfc3RyKSB7DQot
CQljaGFyIHZhbHVlWzY0XTsNCi0JCWJvb2wgc3VjY2VzczsNCi0NCi0JCWZlbmNlLT5vcHMtPmZl
bmNlX3ZhbHVlX3N0cihmZW5jZSwgdmFsdWUsIHNpemVvZih2YWx1ZSkpOw0KLQkJc3VjY2VzcyA9
IHN0cmxlbih2YWx1ZSk7DQotDQotCQlpZiAoc3VjY2Vzcykgew0KLQkJCXNlcV9wcmludGYocywg
IjogJXMiLCB2YWx1ZSk7DQotDQotCQkJZmVuY2UtPm9wcy0+dGltZWxpbmVfdmFsdWVfc3RyKGZl
bmNlLCB2YWx1ZSwNCi0JCQkJCQkgICAgICAgc2l6ZW9mKHZhbHVlKSk7DQotDQotCQkJaWYgKHN0
cmxlbih2YWx1ZSkpDQotCQkJCXNlcV9wcmludGYocywgIiAvICVzIiwgdmFsdWUpOw0KLQkJfQ0K
LQl9DQotDQorCXNlcV9wcmludGYocywgIjogJWxsZCIsIGZlbmNlLT5zZXFubyk7DQorCXNlcV9w
cmludGYocywgIiAvICVkIiwgcGFyZW50LT52YWx1ZSk7DQogCXNlcV9wdXRjKHMsICdcbicpOw0K
IH0NCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2ZlbmNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2ZlbmNlLmMNCmluZGV4IGUxNTc1NDE3ODM5NS4uNTI5
OGQ5OTVmYWE3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9mZW5jZS5j
DQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2ZlbmNlLmMNCkBAIC01MywyNSArNTMs
MTAgQEAgc3RhdGljIHZvaWQgdmdlbV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmJh
c2UpDQogCWRtYV9mZW5jZV9mcmVlKCZmZW5jZS0+YmFzZSk7DQogfQ0KIA0KLXN0YXRpYyB2b2lk
IHZnZW1fZmVuY2VfdmFsdWVfc3RyKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjaGFyICpzdHIs
IGludCBzaXplKQ0KLXsNCi0Jc25wcmludGYoc3RyLCBzaXplLCAiJWxsdSIsIGZlbmNlLT5zZXFu
byk7DQotfQ0KLQ0KLXN0YXRpYyB2b2lkIHZnZW1fZmVuY2VfdGltZWxpbmVfdmFsdWVfc3RyKHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjaGFyICpzdHIsDQotCQkJCQkgIGludCBzaXplKQ0KLXsN
Ci0Jc25wcmludGYoc3RyLCBzaXplLCAiJWxsdSIsDQotCQkgZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
KGZlbmNlKSA/IGZlbmNlLT5zZXFubyA6IDApOw0KLX0NCi0NCiBzdGF0aWMgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgdmdlbV9mZW5jZV9vcHMgPSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSB2
Z2VtX2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwNCiAJLmdldF90aW1lbGluZV9uYW1lID0gdmdlbV9m
ZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCiAJLnJlbGVhc2UgPSB2Z2VtX2ZlbmNlX3JlbGVhc2Us
DQotDQotCS5mZW5jZV92YWx1ZV9zdHIgPSB2Z2VtX2ZlbmNlX3ZhbHVlX3N0ciwNCi0JLnRpbWVs
aW5lX3ZhbHVlX3N0ciA9IHZnZW1fZmVuY2VfdGltZWxpbmVfdmFsdWVfc3RyLA0KIH07DQogDQog
c3RhdGljIHZvaWQgdmdlbV9mZW5jZV90aW1lb3V0KHN0cnVjdCB0aW1lcl9saXN0ICp0KQ0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9mZW5jZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMNCmluZGV4IGYyODM1N2RiZGUzNS4uNDRj
MWQ4ZWYzYzRkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Zl
bmNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9mZW5jZS5jDQpAQCAt
NDksMjYgKzQ5LDEwIEBAIHN0YXRpYyBib29sIHZpcnRpb19ncHVfZmVuY2Vfc2lnbmFsZWQoc3Ry
dWN0IGRtYV9mZW5jZSAqZikNCiAJcmV0dXJuIGZhbHNlOw0KIH0NCiANCi1zdGF0aWMgdm9pZCB2
aXJ0aW9fZ3B1X2ZlbmNlX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBjaGFyICpzdHIs
IGludCBzaXplKQ0KLXsNCi0Jc25wcmludGYoc3RyLCBzaXplLCAiWyVsbHUsICVsbHVdIiwgZi0+
Y29udGV4dCwgZi0+c2Vxbm8pOw0KLX0NCi0NCi1zdGF0aWMgdm9pZCB2aXJ0aW9fZ3B1X3RpbWVs
aW5lX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBjaGFyICpzdHIsDQotCQkJCQkgIGlu
dCBzaXplKQ0KLXsNCi0Jc3RydWN0IHZpcnRpb19ncHVfZmVuY2UgKmZlbmNlID0gdG9fdmlydGlv
X2dwdV9mZW5jZShmKTsNCi0NCi0Jc25wcmludGYoc3RyLCBzaXplLCAiJWxsdSIsDQotCQkgKHU2
NClhdG9taWM2NF9yZWFkKCZmZW5jZS0+ZHJ2LT5sYXN0X2ZlbmNlX2lkKSk7DQotfQ0KLQ0KIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB2aXJ0aW9fZ3B1X2ZlbmNlX29wcyA9IHsN
CiAJLmdldF9kcml2ZXJfbmFtZSAgICAgPSB2aXJ0aW9fZ3B1X2dldF9kcml2ZXJfbmFtZSwNCiAJ
LmdldF90aW1lbGluZV9uYW1lICAgPSB2aXJ0aW9fZ3B1X2dldF90aW1lbGluZV9uYW1lLA0KIAku
c2lnbmFsZWQgICAgICAgICAgICA9IHZpcnRpb19ncHVfZmVuY2Vfc2lnbmFsZWQsDQotCS5mZW5j
ZV92YWx1ZV9zdHIgICAgID0gdmlydGlvX2dwdV9mZW5jZV92YWx1ZV9zdHIsDQotCS50aW1lbGlu
ZV92YWx1ZV9zdHIgID0gdmlydGlvX2dwdV90aW1lbGluZV92YWx1ZV9zdHIsDQogfTsNCiANCiBz
dHJ1Y3QgdmlydGlvX2dwdV9mZW5jZSAqdmlydGlvX2dwdV9mZW5jZV9hbGxvYyhzdHJ1Y3Qgdmly
dGlvX2dwdV9kZXZpY2UgKnZnZGV2LA0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQppbmRleCBlMjMwYWYwZDEyM2YuLjg3
NzhlMmQ3NThkYSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBi
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCkBAIC0yMzgsMjcgKzIzOCw2IEBAIHN0cnVjdCBk
bWFfZmVuY2Vfb3BzIHsNCiAJICovDQogCXZvaWQgKCpyZWxlYXNlKShzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSk7DQogDQotCS8qKg0KLQkgKiBAZmVuY2VfdmFsdWVfc3RyOg0KLQkgKg0KLQkgKiBD
YWxsYmFjayB0byBmaWxsIGluIGZyZWUtZm9ybSBkZWJ1ZyBpbmZvIHNwZWNpZmljIHRvIHRoaXMg
ZmVuY2UsIGxpa2UNCi0JICogdGhlIHNlcXVlbmNlIG51bWJlci4NCi0JICoNCi0JICogVGhpcyBj
YWxsYmFjayBpcyBvcHRpb25hbC4NCi0JICovDQotCXZvaWQgKCpmZW5jZV92YWx1ZV9zdHIpKHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjaGFyICpzdHIsIGludCBzaXplKTsNCi0NCi0JLyoqDQot
CSAqIEB0aW1lbGluZV92YWx1ZV9zdHI6DQotCSAqDQotCSAqIEZpbGxzIGluIHRoZSBjdXJyZW50
IHZhbHVlIG9mIHRoZSB0aW1lbGluZSBhcyBhIHN0cmluZywgbGlrZSB0aGUNCi0JICogc2VxdWVu
Y2UgbnVtYmVyLiBOb3RlIHRoYXQgdGhlIHNwZWNpZmljIGZlbmNlIHBhc3NlZCB0byB0aGlzIGZ1
bmN0aW9uDQotCSAqIHNob3VsZCBub3QgbWF0dGVyLCBkcml2ZXJzIHNob3VsZCBvbmx5IHVzZSBp
dCB0byBsb29rIHVwIHRoZQ0KLQkgKiBjb3JyZXNwb25kaW5nIHRpbWVsaW5lIHN0cnVjdHVyZXMu
DQotCSAqLw0KLQl2b2lkICgqdGltZWxpbmVfdmFsdWVfc3RyKShzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSwNCi0JCQkJICAgY2hhciAqc3RyLCBpbnQgc2l6ZSk7DQotDQogCS8qKg0KIAkgKiBAc2V0
X2RlYWRsaW5lOg0KIAkgKg0KLS0gDQoyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
