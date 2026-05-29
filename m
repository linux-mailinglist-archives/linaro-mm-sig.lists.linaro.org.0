Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIFSEsg2GWrzswgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 08:48:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E24565FE259
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 08:48:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA4FE40977
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 06:48:38 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by lists.linaro.org (Postfix) with ESMTPS id 604723F8EE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 May 2026 06:48:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=EydLF0MU;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38e7b0903cdso109665231fa.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 23:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780037301; x=1780642101; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+aMMV5ilmpFv8Pwd8WuxApxlzDJGWTTKgJEHknglssE=;
        b=EydLF0MUff7RvjOU3e+p2/gGzDKhroAoEhJ5hvMoMqBHTotZt9+3fTmi7ghm8eQdEW
         YjGvDFRbrvK1lHq5kVXBMsoG8HRDyN1flAiZfF8+AyWSbdwHPy+lISNqGUH5uTtHGYw5
         fBEI31y1T0ywb7yJ4czcVgNBToEJULhvLCe+wRLnttqk+xrXf+SquSgFrpc7Ss6T3kLI
         BZMOZ+rRHjewETDBmO01rr+QGo+4LqhwbGilD6fRzlA5qsHnci0uZOUhZSlSNiRmIIc1
         VTFQ32tck4Lvc+OKlaZ1spPGdQ+AoPFJavtmmLC9PF2W1Ca+RPlQdwxdkbGEnaldDzzy
         P81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780037301; x=1780642101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+aMMV5ilmpFv8Pwd8WuxApxlzDJGWTTKgJEHknglssE=;
        b=RTFRh3jt7G0fH+sCu/V3/ROaDxVSAqwvGWrsjcoKc5tZsyr+vglOOdUvSTSfvaVLvl
         nKJY/aHVCU+Rz8WE1YP0boftt5u41/of0UhwHriGTgqRQKbSDzwOIcegf4qSb/JpPw47
         veTNseAnsVcdYB4fHuyRxrs0LZilO1YD2rKRuPpu/lz+QxT8glpm6r5ppaaaIC1jvzse
         qMcEC4Dm44LwaqfLgFvtM7oPHtqIcYF9r7VMDSzCc4F4Y6IyL8SaCPRPo4CrEPCC23fp
         uz3YGHRUw/O+punUPLlIFvk6zVExFIET6VlQAhKn7TYxvkLcjkRgYDNaY5bQvB0H89Au
         jykQ==
X-Forwarded-Encrypted: i=1; AFNElJ8TzRkbrydDuCphrMfxWmVcpeAdZHBStXPC+2rdS711fXB6qBmIDHk+TkTfxKXUHTjKITPgWJaYWiRWlInd@lists.linaro.org
X-Gm-Message-State: AOJu0Yyp82lakEPn4+hTMwWJjbMgvM38s8SlvKRtQO70fsLrdQnbW/It
	XGedbqYoMOlTdxAr1EXcFJ+i/+DPXKKEv8yZRiBpU1b7JaZ1yBHrMRKL
X-Gm-Gg: Acq92OEkrNab5GQDuaDvr5Ntv5NKeGjIQKNtHQzyvD6zkBAR2jH+rWwo5PuFdV8UK9V
	jRG+S9jq4l0Xx6F80fgExQ15JLseNqJbyCXuhX2j5fKtJB5fAu4iDTncCMA6G5XqQqtmVkHoA6i
	fPh/e7+oU2P4ykknYpEUmrSrJ2GL/WgPyDYzWmdqBe+TLjR4XvL4u9W08EVkjK+1TjjRjm8Jyne
	RNCLQ0UMupoalCesIZEVLhdSfbl0EP8vS9DtOGSnfSlYSoVy3dhCIzab8i5sL+qu2+aThtTsYkt
	58OEqKC3W1KXLHRVrk/MKYbl4kMpDsQSC/sM91qkF+Kbh07onF4L8gJLm8blOvnh19SI98Uhm+7
	WWXTaa0AbeoLVN2q7dIp8SPvdZaMBOpjU3+WpLGlupexGgXvBnAcgLQ9MxjAlcop/s68ChiqksL
	B1aMfkNxBTt/xZ60afRmjuDlqiY5z83buQwyxbMP7KPdk=
X-Received: by 2002:a05:6512:230c:b0:5a8:f6fd:eb15 with SMTP id 2adb3069b0e04-5aa594a7f4cmr457133e87.24.1780037300718;
        Thu, 28 May 2026 23:48:20 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa5b79f04dsm72147e87.83.2026.05.28.23.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 23:48:20 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Fri, 29 May 2026 11:47:38 +0500
Message-ID: <20260529064740.25060-2-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260529064740.25060-1-mikhail.v.gavrilov@gmail.com>
References: <20260521150841.20625-1-mikhail.v.gavrilov@gmail.com>
 <20260529064740.25060-1-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: F523K2BJ2UN2VIB4NYE6ST6IJQT53IRG
X-Message-ID-Hash: F523K2BJ2UN2VIB4NYE6ST6IJQT53IRG
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 1/2] drm/amdgpu: convert amdgpu_vm_lock_by_pasid() to drm_exec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F523K2BJ2UN2VIB4NYE6ST6IJQT53IRG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.411];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: E24565FE259
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

YW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQoKSBsb29rcyB1cCBhIFZNIGJ5IFBBU0lEIGFuZCByZXNl
cnZlcyBpdHMgcm9vdA0KUEQgd2l0aCBhIGJhcmUgYW1kZ3B1X2JvX3Jlc2VydmUoKSwgcmV0dXJu
aW5nIHRoZSBzdGlsbC1yZXNlcnZlZCByb290IHRvDQp0aGUgY2FsbGVyLiBBIGNhbGxlciB0aGF0
IHRoZW4gbmVlZHMgdG8gcmVzZXJ2ZSBmdXJ0aGVyIEJPcyAoZm9yIGV4YW1wbGUNCnRoZSBkZXZj
b3JlZHVtcCBJQiBkdW1wKSBlbmRzIHVwIG5lc3RpbmcgcmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0
ZXgNCmFjcXVpcmVzIHdpdGhvdXQgYSB3d19hY3F1aXJlX2N0eCwgd2hpY2ggbG9ja2RlcCBmbGFn
cyBhcyByZWN1cnNpdmUNCmxvY2tpbmcuDQoNCkNvbnZlcnQgdGhlIGhlbHBlciB0byB0YWtlIGEg
ZHJtX2V4ZWMgY29udGV4dCBhbmQgbG9jayB0aGUgcm9vdCBQRCB3aXRoDQpkcm1fZXhlY19sb2Nr
X29iaigpLiBDYWxsZXJzIG5vdyBydW4gaXQgaW5zaWRlIGENCmRybV9leGVjX3VudGlsX2FsbF9s
b2NrZWQoKSBsb29wIGFuZCBjYW4gbG9jayBhZGRpdGlvbmFsIEJPcyBpbiB0aGUgc2FtZQ0Kd3cg
dGlja2V0LCBzbyB0aGVyZSBpcyBubyBuZXN0ZWQgd3dfbXV0ZXggYWNxdWlyZS4NCg0KVGhlIGRy
bV9leGVjIGNvbnRleHQgaG9sZHMgaXRzIG93biByZWZlcmVuY2Ugb24gdGhlIGxvY2tlZCByb290
IEJPLCBzbw0KdGhlIGhlbHBlciBubyBsb25nZXIgaGFuZHMgYSByb290IHJlZmVyZW5jZSBiYWNr
IHRvIHRoZSBjYWxsZXI6IHRoZQ0Kcm9vdCBvdXRwdXQgcGFyYW1ldGVyIGlzIGRyb3BwZWQsIGFu
ZCB0aGUgdHJhbnNpZW50IHJlZmVyZW5jZSB0YWtlbg0KYWNyb3NzIHRoZSBQQVNJRCBsb29rdXAg
aXMgcmVsZWFzZWQgYmVmb3JlIHJldHVybmluZy4NCg0KVGhlIG9ubHkgZXhpc3RpbmcgY2FsbGVy
LCBhbWRncHVfdm1faGFuZGxlX2ZhdWx0KCksIGlzIHVwZGF0ZWQNCmFjY29yZGluZ2x5LiBJdHMg
aXNfY29tcHV0ZV9jb250ZXh0IHBhdGgsIHdoaWNoIHByZXZpb3VzbHkgZHJvcHBlZCB0aGUNCnJv
b3QgcmVzZXJ2YXRpb24gYXJvdW5kIHN2bV9yYW5nZV9yZXN0b3JlX3BhZ2VzKCkgYW5kIHJlLXRv
b2sgaXQsIG5vdw0KZmluYWxpc2VzIHRoZSBkcm1fZXhlYyBjb250ZXh0IGFuZCByZS1pbml0aWFs
aXNlcyBhIGZyZXNoIG9uZTsgYmVoYXZpb3VyDQppcyBvdGhlcndpc2UgdW5jaGFuZ2VkLg0KDQpO
byBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRlZCBmb3IgdGhlIHBhZ2UtZmF1bHQgcGF0aC4NCg0K
UmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
ClNpZ25lZC1vZmYtYnk6IE1pa2hhaWwgR2F2cmlsb3YgPG1pa2hhaWwudi5nYXZyaWxvdkBnbWFp
bC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uYyB8IDkx
ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3ZtLmggfCAgMiArLQ0KIDIgZmlsZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwg
MzUgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfdm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5jDQpp
bmRleCBmY2NkNzU4YjY2OTkuLmI5ZDkzYjY2NGRhZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdm0uYw0KQEAgLTI5NTAsNDcgKzI5NTAsNTYgQEAgaW50IGFtZGdwdV92bV9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLCBzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbHApDQogfQ0KIA0KIC8qKg0KLSAqIGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkIC0gcmV0dXJu
IGFuIGFtZGdwdV92bSBhbmQgaXRzIHJvb3QgYm8gZnJvbSBhIHBhc2lkLCBpZiBwb3NzaWJsZS4N
CisgKiBhbWRncHVfdm1fbG9ja19ieV9wYXNpZCAtIGxvb2sgdXAgYSBWTSBieSBQQVNJRCBhbmQg
bG9jayBpdHMgcm9vdCBQRA0KICAqIEBhZGV2OiBhbWRncHUgZGV2aWNlIHBvaW50ZXINCi0gKiBA
cm9vdDogcm9vdCBCTyBvZiB0aGUgVk0NCiAgKiBAcGFzaWQ6IFBBU0lEIG9mIHRoZSBWTQ0KLSAq
IFRoZSBjYWxsZXIgbmVlZHMgdG8gdW5yZXNlcnZlIGFuZCB1bnJlZiB0aGUgcm9vdCBibyBvbiBz
dWNjZXNzLg0KKyAqIEBleGVjOiBkcm1fZXhlYyBjb250ZXh0IHRvIGxvY2sgdGhlIHJvb3QgUEQg
aW4NCisgKg0KKyAqIE11c3QgYmUgY2FsbGVkIGZyb20gd2l0aGluIGEgZHJtX2V4ZWNfdW50aWxf
YWxsX2xvY2tlZCgpIGxvb3A7IHRoZSBjYWxsZXINCisgKiBydW5zIGRybV9leGVjX3JldHJ5X29u
X2NvbnRlbnRpb24oKSBhZnRlcndhcmRzLiBUaGUgZHJtX2V4ZWMgY29udGV4dCBob2xkcw0KKyAq
IGEgcmVmZXJlbmNlIG9uIHRoZSByb290IEJPIHVudGlsIGl0IGlzIGZpbmFsaXNlZC4NCisgKg0K
KyAqIFJldHVybjogdGhlIFZNIG9uIHN1Y2Nlc3MsIG9yIE5VTEwgaWYgdGhlIFBBU0lEIGhhcyBu
byBWTSwgdGhlIFZNIGlzIGJlaW5nDQorICogdG9ybiBkb3duLCBvciBsb2NraW5nIHRoZSByb290
IFBEIGZhaWxlZC4NCiAgKi8NCiBzdHJ1Y3QgYW1kZ3B1X3ZtICphbWRncHVfdm1fbG9ja19ieV9w
YXNpZChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCi0JCQkJCSAgc3RydWN0IGFtZGdwdV9i
byAqKnJvb3QsIHUzMiBwYXNpZCkNCisJCQkJCSAgdTMyIHBhc2lkLCBzdHJ1Y3QgZHJtX2V4ZWMg
KmV4ZWMpDQogew0KIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0KKwlzdHJ1Y3QgYW1kZ3B1X2Jv
ICpyb290Ow0KIAlzdHJ1Y3QgYW1kZ3B1X3ZtICp2bTsNCiAJaW50IHI7DQogDQogCXhhX2xvY2tf
aXJxc2F2ZSgmYWRldi0+dm1fbWFuYWdlci5wYXNpZHMsIGlycWZsYWdzKTsNCiAJdm0gPSB4YV9s
b2FkKCZhZGV2LT52bV9tYW5hZ2VyLnBhc2lkcywgcGFzaWQpOw0KLQkqcm9vdCA9IHZtID8gYW1k
Z3B1X2JvX3JlZih2bS0+cm9vdC5ibykgOiBOVUxMOw0KKwlyb290ID0gdm0gPyBhbWRncHVfYm9f
cmVmKHZtLT5yb290LmJvKSA6IE5VTEw7DQogCXhhX3VubG9ja19pcnFyZXN0b3JlKCZhZGV2LT52
bV9tYW5hZ2VyLnBhc2lkcywgaXJxZmxhZ3MpOw0KIA0KLQlpZiAoISpyb290KQ0KKwlpZiAoIXJv
b3QpDQogCQlyZXR1cm4gTlVMTDsNCiANCi0JciA9IGFtZGdwdV9ib19yZXNlcnZlKCpyb290LCB0
cnVlKTsNCi0JaWYgKHIpDQotCQlnb3RvIGVycm9yX3VucmVmOw0KKwlyID0gZHJtX2V4ZWNfbG9j
a19vYmooZXhlYywgJnJvb3QtPnRiby5iYXNlKTsNCisJaWYgKHIpIHsNCisJCWFtZGdwdV9ib191
bnJlZigmcm9vdCk7DQorCQlyZXR1cm4gTlVMTDsNCisJfQ0KIA0KIAkvKiBEb3VibGUgY2hlY2sg
dGhhdCB0aGUgVk0gc3RpbGwgZXhpc3RzICovDQogCXhhX2xvY2tfaXJxc2F2ZSgmYWRldi0+dm1f
bWFuYWdlci5wYXNpZHMsIGlycWZsYWdzKTsNCiAJdm0gPSB4YV9sb2FkKCZhZGV2LT52bV9tYW5h
Z2VyLnBhc2lkcywgcGFzaWQpOw0KLQlpZiAodm0gJiYgdm0tPnJvb3QuYm8gIT0gKnJvb3QpDQor
CWlmICh2bSAmJiB2bS0+cm9vdC5ibyAhPSByb290KQ0KIAkJdm0gPSBOVUxMOw0KIAl4YV91bmxv
Y2tfaXJxcmVzdG9yZSgmYWRldi0+dm1fbWFuYWdlci5wYXNpZHMsIGlycWZsYWdzKTsNCi0JaWYg
KCF2bSkNCi0JCWdvdG8gZXJyb3JfdW5sb2NrOw0KKwlpZiAoIXZtKSB7DQorCQlkcm1fZXhlY191
bmxvY2tfb2JqKGV4ZWMsICZyb290LT50Ym8uYmFzZSk7DQorCQlhbWRncHVfYm9fdW5yZWYoJnJv
b3QpOw0KKwkJcmV0dXJuIE5VTEw7DQorCX0NCiANCi0JcmV0dXJuIHZtOw0KLWVycm9yX3VubG9j
azoNCi0JYW1kZ3B1X2JvX3VucmVzZXJ2ZSgqcm9vdCk7DQorCS8qIFRoZSBkcm1fZXhlYyBjb250
ZXh0IGhvbGRzIGl0cyBvd24gcmVmZXJlbmNlIG9uIHRoZSByb290IEJPLiAqLw0KKwlhbWRncHVf
Ym9fdW5yZWYoJnJvb3QpOw0KIA0KLWVycm9yX3VucmVmOg0KLQlhbWRncHVfYm9fdW5yZWYocm9v
dCk7DQotCXJldHVybiBOVUxMOw0KKwlyZXR1cm4gdm07DQogfQ0KIA0KIC8qKg0KQEAgLTMwMTIs
MzMgKzMwMjEsNDkgQEAgYm9vbCBhbWRncHVfdm1faGFuZGxlX2ZhdWx0KHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2LCB1MzIgcGFzaWQsDQogCQkJICAgIHVpbnQ2NF90IHRzLCBib29sIHdyaXRl
X2ZhdWx0KQ0KIHsNCiAJYm9vbCBpc19jb21wdXRlX2NvbnRleHQgPSBmYWxzZTsNCi0Jc3RydWN0
IGFtZGdwdV9ibyAqcm9vdDsNCisJc3RydWN0IGRybV9leGVjIGV4ZWM7DQogCXVpbnQ2NF90IHZh
bHVlLCBmbGFnczsNCiAJc3RydWN0IGFtZGdwdV92bSAqdm07DQogCWludCByOw0KIA0KLQl2bSA9
IGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKGFkZXYsICZyb290LCBwYXNpZCk7DQotCWlmICghdm0p
DQorCWRybV9leGVjX2luaXQoJmV4ZWMsIDAsIDEpOw0KKwlkcm1fZXhlY191bnRpbF9hbGxfbG9j
a2VkKCZleGVjKSB7DQorCQl2bSA9IGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKGFkZXYsIHBhc2lk
LCAmZXhlYyk7DQorCQlkcm1fZXhlY19yZXRyeV9vbl9jb250ZW50aW9uKCZleGVjKTsNCisJCWlm
ICghdm0pDQorCQkJYnJlYWs7DQorCX0NCisJaWYgKCF2bSkgew0KKwkJZHJtX2V4ZWNfZmluaSgm
ZXhlYyk7DQogCQlyZXR1cm4gZmFsc2U7DQorCX0NCiANCiAJaXNfY29tcHV0ZV9jb250ZXh0ID0g
dm0tPmlzX2NvbXB1dGVfY29udGV4dDsNCiANCiAJaWYgKGlzX2NvbXB1dGVfY29udGV4dCkgew0K
LQkJLyogVW5yZXNlcnZlIHJvb3Qgc2luY2Ugc3ZtX3JhbmdlX3Jlc3RvcmVfcGFnZXMgbWlnaHQg
dHJ5IHRvIHJlc2VydmUgaXQuICovDQotCQkvKiBUT0RPOiByZXdvcmsgc3ZtX3JhbmdlX3Jlc3Rv
cmVfcGFnZXMgc28gdGhhdCB0aGlzIGlzbid0IG5lY2Vzc2FyeS4gKi8NCi0JCWFtZGdwdV9ib191
bnJlc2VydmUocm9vdCk7DQorCQkvKiBSZWxlYXNlIHRoZSByb290IFBEIGxvY2sgc2luY2Ugc3Zt
X3JhbmdlX3Jlc3RvcmVfcGFnZXMNCisJCSAqIG1pZ2h0IHRyeSB0byB0YWtlIGl0Lg0KKwkJICog
VE9ETzogcmV3b3JrIHN2bV9yYW5nZV9yZXN0b3JlX3BhZ2VzIHNvIHRoYXQgdGhpcyBpc24ndA0K
KwkJICogbmVjZXNzYXJ5Lg0KKwkJICovDQorCQlkcm1fZXhlY19maW5pKCZleGVjKTsNCiANCiAJ
CWlmICghc3ZtX3JhbmdlX3Jlc3RvcmVfcGFnZXMoYWRldiwgcGFzaWQsIHZtaWQsDQotCQkJCQkg
ICAgIG5vZGVfaWQsIGFkZHIgPj4gUEFHRV9TSElGVCwgdHMsIHdyaXRlX2ZhdWx0KSkgew0KLQkJ
CWFtZGdwdV9ib191bnJlZigmcm9vdCk7DQorCQkJCQkgICAgIG5vZGVfaWQsIGFkZHIgPj4gUEFH
RV9TSElGVCwgdHMsIHdyaXRlX2ZhdWx0KSkNCiAJCQlyZXR1cm4gdHJ1ZTsNCi0JCX0NCi0JCWFt
ZGdwdV9ib191bnJlZigmcm9vdCk7DQogDQogCQkvKiBSZS1hY3F1aXJlIHRoZSBWTSBsb2NrLCBj
b3VsZCBiZSB0aGF0IHRoZSBWTSB3YXMgZnJlZWQgaW4gYmV0d2Vlbi4gKi8NCi0JCXZtID0gYW1k
Z3B1X3ZtX2xvY2tfYnlfcGFzaWQoYWRldiwgJnJvb3QsIHBhc2lkKTsNCi0JCWlmICghdm0pDQor
CQlkcm1fZXhlY19pbml0KCZleGVjLCAwLCAxKTsNCisJCWRybV9leGVjX3VudGlsX2FsbF9sb2Nr
ZWQoJmV4ZWMpIHsNCisJCQl2bSA9IGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKGFkZXYsIHBhc2lk
LCAmZXhlYyk7DQorCQkJZHJtX2V4ZWNfcmV0cnlfb25fY29udGVudGlvbigmZXhlYyk7DQorCQkJ
aWYgKCF2bSkNCisJCQkJYnJlYWs7DQorCQl9DQorCQlpZiAoIXZtKSB7DQorCQkJZHJtX2V4ZWNf
ZmluaSgmZXhlYyk7DQogCQkJcmV0dXJuIGZhbHNlOw0KKwkJfQ0KIAl9DQogDQogCWFkZHIgLz0g
QU1ER1BVX0dQVV9QQUdFX1NJWkU7DQpAQCAtMzA2Miw3ICszMDg3LDcgQEAgYm9vbCBhbWRncHVf
dm1faGFuZGxlX2ZhdWx0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1MzIgcGFzaWQsDQog
CQl2YWx1ZSA9IDA7DQogCX0NCiANCi0JciA9IGRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKHJvb3Qt
PnRiby5iYXNlLnJlc3YsIDEpOw0KKwlyID0gZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXModm0tPnJv
b3QuYm8tPnRiby5iYXNlLnJlc3YsIDEpOw0KIAlpZiAocikgew0KIAkJcHJfZGVidWcoImZhaWxl
ZCAlZCB0byByZXNlcnZlIGZlbmNlIHNsb3RcbiIsIHIpOw0KIAkJZ290byBlcnJvcl91bmxvY2s7
DQpAQCAtMzA3NiwxMiArMzEwMSwxMCBAQCBib29sIGFtZGdwdV92bV9oYW5kbGVfZmF1bHQoc3Ry
dWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHUzMiBwYXNpZCwNCiAJciA9IGFtZGdwdV92bV91cGRh
dGVfcGRlcyhhZGV2LCB2bSwgdHJ1ZSk7DQogDQogZXJyb3JfdW5sb2NrOg0KLQlhbWRncHVfYm9f
dW5yZXNlcnZlKHJvb3QpOw0KKwlkcm1fZXhlY19maW5pKCZleGVjKTsNCiAJaWYgKHIgPCAwKQ0K
IAkJZGV2X2VycihhZGV2LT5kZXYsICJDYW4ndCBoYW5kbGUgcGFnZSBmYXVsdCAoJWQpXG4iLCBy
KTsNCiANCi0JYW1kZ3B1X2JvX3VucmVmKCZyb290KTsNCi0NCiAJcmV0dXJuIGZhbHNlOw0KIH0N
CiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uaCBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5oDQppbmRleCBkMDgzZDdhYWI3
NWMuLjBjNmUzZTAzNjhjNyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV92bS5oDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0u
aA0KQEAgLTU5Myw3ICs1OTMsNyBAQCBib29sIGFtZGdwdV92bV9oYW5kbGVfZmF1bHQoc3RydWN0
IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHUzMiBwYXNpZCwNCiAJCQkgICAgYm9vbCB3cml0ZV9mYXVs
dCk7DQogDQogc3RydWN0IGFtZGdwdV92bSAqYW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQoc3RydWN0
IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQotCQkJCQkgIHN0cnVjdCBhbWRncHVfYm8gKipyb290LCB1
MzIgcGFzaWQpOw0KKwkJCQkJICB1MzIgcGFzaWQsIHN0cnVjdCBkcm1fZXhlYyAqZXhlYyk7DQog
DQogdm9pZCBhbWRncHVfdm1fc2V0X3Rhc2tfaW5mbyhzdHJ1Y3QgYW1kZ3B1X3ZtICp2bSk7DQog
DQotLSANCjIuNTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
