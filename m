Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +F/gLSxrTmpcMQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 17:22:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3787F727F01
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 17:22:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=yaTXOJYN;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E87E40977
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2026 15:22:19 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8095D3F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 15:22:08 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-698c0ff45b5so2944239a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 08:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783524127; x=1784128927; darn=lists.linaro.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dT/4FqiNAEmcewp+PxajT6kJ3w+dqpjt8gG4B1wnCug=;
        b=yaTXOJYNYsTfy99fg3uR1+2VNbEiq+XVZdWthB+h+dNMBoqKkvsKt+I3mLBS67XtBp
         d0oJ950j3hrg3uDylM8dZyVoEARgE4SzHq8A5V2wUxBc6cVX+3lRrt+VSf3OfiiROMek
         BlXJJkKmPcxCr40p8J8nAwEmpoVSulsFX16BBbuRKdWt07SVdQ7glk2eqo62SBEu/Vlq
         mINMNPKvA7mNEdSKj0u8qsNzEgbMG1UsQqMhzuqyFmXfE7oPEQxUe9eTlxoPRLTRop/H
         Wi26UnF/jc5kyfx6aNqib9Tmof5i8FwgUqC5ltUPrtg3AigQf0OSfTzNGimN0jMs0TCP
         IIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783524127; x=1784128927;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dT/4FqiNAEmcewp+PxajT6kJ3w+dqpjt8gG4B1wnCug=;
        b=pWgE9wk5GrkWScJRN8kQxaob0k2zOLFDVCsK4cMNirys5WaB795fmTR3DRdhh7aT+E
         eVO9YDiSRxQkgwMTTQN0q6TxG9Yk++dYj2iRYTHxMHAZ62Vn4I9KYflggeJmqYAQnU+N
         KxtOuw9GNAVpfBXzMTejddLy+v9mx2ZLGCTpr+zJ0mhRmFq+VgW3GjpRiFDVmAlSopoU
         XroYaJcZxriWWlfS8Gq5/FUBaZ53+pxEBcU4gqvSWrl+aAZzTwjBuyNVg8Q0bjHfkesj
         P7fk3xv90C87CSCN8J2Y3oSOjEgrgQNNSf3GNSGSieZxpCDDoPrBpTKZUVNmZOp+WJ/5
         kx3A==
X-Forwarded-Encrypted: i=1; AHgh+RqWjdlcIUHaUdyn9gxpf9la0aQ8k1kehKhX5ijeMTA/DTyK96bilw03RXZFp+SR8jmzvJIPzzRlfRESDAO9@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/HtSTUpdlU+wODYckr2FL/+15YxFNM57GNPPmutssI2G+NR+C
	ROF/vTFDezK0vZPHdUT8jwsSM8XGiPsKTgLoCCoJ901AyKluqEII4E21tafyZiMkKX1fMA==
X-Gm-Gg: AfdE7cnnQ0KuJDLm2PHipuBimg/XhO8HYIKY+3jPjhBsJ+kuU3VplQzuxTv6FhC0iET
	t478TZsOBYFq8/P2wOeh1rC6aq2OpYL3TeCFbPNCV3cywfi59bo3+uPlwkERrMcTpmXyC4pagME
	uaxSb/MNyixk7rUGueXntAhZr3VW4iaBemOyfClWn3GWmVvvqu6C9UblSfp6o9urT+rf4FoCP3x
	7UDpU4CTwC1whnZ6hgk3weR5cUkmlhV94kYnXM0azVXQvBoiUO83x6gIModbKmKSSrPx2PTGE2D
	OHK1Ixw270sQCe7ATlttVG/Y5i59eGu8kXHd1iwV0VP/Pu8337cGicQruucwJFbhwjGoqKimttz
	1UOcisFIE56+KsF6kEcgjYjCIGIFkWlF4TdI7FNMzxnYRjlEPILalpnILlQchcuPUrwe0+L6YHu
	jL6scmyjUsXxvqP7IAjln0NRMH0moesF61qJ7Qi9UqB2/LYp8re9JVqSZhFxgyKHRuYYavituct
	GVX1P8=
X-Received: by 2002:a17:907:70b:b0:c12:6280:33c9 with SMTP id a640c23a62f3a-c15ce011b1dmr171223266b.28.1783524127378;
        Wed, 08 Jul 2026 08:22:07 -0700 (PDT)
Received: from puffmais2.c.googlers.com (181.179.204.35.bc.googleusercontent.com. [35.204.179.181])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15beb53b86sm213932966b.25.2026.07.08.08.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 08:22:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 08 Jul 2026 16:22:04 +0100
Message-Id: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-B4-Tracking: v=1; b=H4sIABxrTmoC/32NWwrCMBBFt1Lm20heJuKX+5BSYpq2A9rIpIZKy
 d6NXYCf53AfG6RAGBJcmg0oZEwY5wry0ICf3DwGhn1lkFwabsSZPXB+r6ynZ+dp8d2Aq2RSOev
 VSTstJNTmi0L1++qtrTxhWiJ99pMsfvb/XhZMMM9VsPauzKD0taYcxWOkEdpSyhd3oVZ5twAAA
 A==
X-Change-ID: 20260618-linux-drm_crtc_fix2-23a7c354a412
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Stanner <phasta@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ---
Message-ID-Hash: C52BFLVEZHCHDTS2INMIQC2PFZYEL767
X-Message-ID-Hash: C52BFLVEZHCHDTS2INMIQC2PFZYEL767
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] drm/drm_crtc: dma_fence_ops fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C52BFLVEZHCHDTS2INMIQC2PFZYEL767/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:andre.draszik@linaro.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linaro.org:from_mime,linaro.org:email,linaro.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3787F727F01

SGksDQoNClRoZXNlIHBhdGNoZXMgZml4IHR3byBpc3N1ZXMgaW4gdGhlIGRybS9kcm1fY3J0YyBk
cml2ZXIuIEluaXRpYWxseSBJDQp3YXMgaGl0dGluZyB0aGUgQlVHX09OKCkgaW4gYSBzY2VuYXJp
byBhcyBleHBsYWluZWQgaW4gdGhlIGNvbW1pdA0KbWVzc2FnZSBvZiB3aGF0IGlzIG5vdyB0aGUg
c2Vjb25kIHBhdGNoIGluIHRoaXMgc2VyaWVzLiBGb3IgdGhlIHJlYXNvbnMNCm91dGxpbmVzIHRo
ZXJlLCB0aGUgQlVHX09OKCkgc2hvdWxkIGp1c3QgYmUgcmVtb3ZlZC4NCg0KQWZ0ZXIgcG9zdGlu
Zywgc2FzaGlrby5kZXYgbm90aWNlZCBhbm90aGVyIGlzc3VlLCB0aGF0IHdhcyBwcmV2aW91c2x5
DQptYXNrZWQgYnkgdGhlIG5vdy1yZW1vdmVkIEJVR19PTigpLiBTaW5jZSB3ZSBjYW4ndCBoYXZl
IGEgbG91ZCBCVUcoKSBiZQ0KcmVwbGFjZWQgd2l0aCBzaWxlbnQgZGF0YSBjb3JydXB0aW9uIG9y
IHdvcnNlLCBJJ3ZlIGFsc28gYWRkZWQgYSBwYXRjaA0KdG8gYWRkcmVzcyB0aGlzIGlzc3VlIGhp
Z2hsaWdodGVkIGJ5IHNhc2hpa28uZGV2LiBJIGJlbGlldmUgaXRzDQpvYnNlcnZhdGlvbiBhbmQg
YW5hbHlzaXMgdG8gYmUgY29ycmVjdC4NCg0KQ2hlZXJzLA0KQW5kcmUnDQoNClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+DQotLS0NCkNoYW5n
ZXMgaW4gdjI6DQotIGFkZCBuZXcgcGF0Y2ggMSB0byBhZGRyZXNzIHNhc2hpa28gb2JzZXJ2YXRp
b24NCi0gb3JpZ2luYWwgcGF0Y2ggMSBiZWNvbWVzIHBhdGNoIDINCi0gcGF0Y2ggMjoNCiAgLSBk
b24ndCB0dXJuIGZlbmNlX3RvX2NydGMoKSBpbnRvIG1hY3JvIChKYW5pLCBQaGlsaXBwKQ0KICAt
IHVwZGF0ZSBjb21taXQgbWVzc2FnZSB0byBpbmNsdWRlIHJlZmVyZW5jZSB0byBkZXByZWNhdGVk
IHVzZSBvZiBCVUcNCi0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2
MDYxOC1saW51eC1kcm1fY3J0Y19maXgyLXYxLTEtYzAzZTc3YjM2ZjM0QGxpbmFyby5vcmcNCg0K
LS0tDQpBbmRyw6kgRHJhc3ppayAoMik6DQogICAgICBkcm0vZHJtX2NydGM6IGVuc3VyZSBkbWFf
ZmVuY2Vfb3BzIHJlbWFpbiB2YWxpZCBkdXJpbmcgZGV2aWNlIHVuYmluZA0KICAgICAgZHJtL2Ry
bV9jcnRjOiBmaXggcmFjZSB3aXRoIGRtYV9mZW5jZV9zaWduYWwoKSBpbiA6OmdldF9kcml2ZXJf
bmFtZSgpDQoNCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYyB8IDkgKysrKysrLS0tDQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCi0tLQ0KYmFzZS1j
b21taXQ6IGI5ODEwY2Q3NWI5ZmI1NmEzNDI1ZDM5MWNiYTNmNjA4NTAyYmQ0NzQNCmNoYW5nZS1p
ZDogMjAyNjA2MTgtbGludXgtZHJtX2NydGNfZml4Mi0yM2E3YzM1NGE0MTINCg0KQmVzdCByZWdh
cmRzLA0KLS0gDQpBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
