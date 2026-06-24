Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j9QTNeLNO2qbdQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CE06BE1D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=ePenssqr;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A24340AB8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:30:25 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 7F60F40A9C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:26 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-45fd461e4a5so837693f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304165; x=1782908965; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=e+wf2elqBE83cLAMddkXjWEzB4Lp80uvCyXariA02m8=;
        b=ePenssqrs0NVi1yb23qysXs6QXGaIeDLkDiKHPTkTGvR6vRx4U2Ra3W8HSEd/28XH7
         xsbWsbEeH756892HvqS5nQrxPOBJo5viPMad6TX9RjdB3zhInLuSRXHmxQoEgPEB2/ub
         xYcdpTS9YCpkhgGHMgP/3UfEbfnBT6dLct3k14X3l2u1RJvEhs2vGe9NvsKeH4UeyogY
         dCeenQHSIxcxL0H/AJFKfykqjH/7yRn3+LUvNF9NqQHgdJVcJMP6Ol35toSydk6vttcE
         lq7fVLqBmKr9yefWFZpfmfdsMDRNOny6VXaw3SvbnvLx4/tkHXXkDQlkEIzH4l+yyA5X
         47uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304165; x=1782908965;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e+wf2elqBE83cLAMddkXjWEzB4Lp80uvCyXariA02m8=;
        b=JDtApgggBBB95/eeS+GpU9yetDzmpSPTL7EJzjCIUnS7EnzpldGPc/8j5GIgcyMZPX
         fblf8hnq7m68Occ3zB4NbGu150Z1n/1kv/ahIWk1zU7JxSgdqqCGUPUn6DkiNc5Zs0nt
         OUJz/ib9pSKqcwCyDNqJCwv+6HMmDzBi9p/PwGyBdLM0L6lzfSIZ8PPK/TdIl6VyGbdT
         LAi6qNJMWScjV4QD7WQp3Itruu9ZpdDFHxFSKiRSUZMy33bhcc3+Eb2NlDESYLAS5uyP
         RlIiIDUJl2wMWFxe2Rjmr2Bywazjta6kZn99Agz0itXTUyxt8AMOd8eS7L/CTLftLzKd
         KQXg==
X-Forwarded-Encrypted: i=1; AHgh+RqkOiY+I9Gq/nAhTHo8DDTcEXVRwj7jBgFsrT3gE19yrPd2L2qA7uRirpe5TUGTLN7PodESkbdtXZKzLwWl@lists.linaro.org
X-Gm-Message-State: AOJu0YxsLMMlHW+YHF4eqWnUrhBUPlOCpDUm4vCkTGKQ2f63YRrOXSjv
	cYQgZJ+NK9o59gRF55OIRXIW0Y0YoZJKYtXdZGAfTCrJHc23Wnnb3gax
X-Gm-Gg: AfdE7cm+8gG0sll6GACmc0hAltSXcYy70r+CVPCxx6z19BZwr2kFOO6lIeR1CU1rMvu
	HCf2JSpHwFu6r4/pf1IH54NVJLSW5BFTcnMYxz1d7wH7JTqDy7bU1StCRjJjfBFQ1BB/9mrd9wz
	U0wRKAf1awdlYoNAU+QQVCxWrBd/toD5IF7IsJZGdnaNmUhbXzvPAEvj1bEZI6G1tjCY895+fdT
	xpIXSea33lPeDZqcodvCWTG4OFHohCgIWq2lHcAcarCf0VyvcK1ABmG31v7dlMjdANmnRfv02WW
	GjDqqGphzHmRCIX8HFWbXL5xC3G+zWiCxU28EKGwTxE5en4cFBpkKRXCiaAEHTyX6x/l61nbVTz
	HeDRoCYmoT4VhWQ7Rukw3wHk70SXvaJET6vuu0U1YjCY0u2Wp8pOAHl/Dww+oazFot8FM5/a/uj
	+gT5WU3FSZ6oNEbJ+NnJFwzsvZ6VoI96j++jOf
X-Received: by 2002:a05:6000:46cc:b0:460:1957:1b33 with SMTP id ffacd0b85a97d-46ad8c2448dmr7855512f8f.3.1782304165478;
        Wed, 24 Jun 2026 05:29:25 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:30 +0200
Message-ID: <20260624122917.2483-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: CKPSKZL4LYY7SAYXR5HBDUWTOY3MG7X7
X-Message-ID-Hash: CKPSKZL4LYY7SAYXR5HBDUWTOY3MG7X7
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 06/10] drm/xe: stop using dma_fence_is_signaled_locked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CKPSKZL4LYY7SAYXR5HBDUWTOY3MG7X7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 51CE06BE1D9

VGhpcyB1c2UgY2FzZSBpcyBhIGJpdCBtb3JlIGNvbXBsaWNhdGVkIHNpbmNlIHRoZSBpcnEgd29y
a2VyIGlzDQphY3R1YWxseSB0aGUgb25lIHNpZ25hbGluZyB0aGUgZmVuY2UuDQoNClRoZSBwYXRj
aCBzaG91bGQgbm90IGluZHJvZHVjZSBhbnkgZnVuY3Rpb25hbCBjaGFuZ2UsIGJ1dCB0aGUgY29k
ZSBjYW4NCnByb2JhYmx5IGJlIGNsZWFuZWQgdXAgcXVpdGUgYSBiaXQgYWZ0ZXIgdGhlIGZ1bGwg
cGF0Y2ggc2V0IGxhbmRzLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfaHdfZmVu
Y2UuYyB8IDI4ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0veGUveGVfaHdfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5j
ZS5jDQppbmRleCAxNDcyMDYyM2FkMDAuLmE0ZTAyNzg1NTliOCAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVf
aHdfZmVuY2UuYw0KQEAgLTE2LDYgKzE2LDggQEANCiANCiBzdGF0aWMgc3RydWN0IGttZW1fY2Fj
aGUgKnhlX2h3X2ZlbmNlX3NsYWI7DQogDQorc3RhdGljIHN0cnVjdCB4ZV9od19mZW5jZSAqdG9f
eGVfaHdfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpOw0KKw0KIGludCBfX2luaXQgeGVf
aHdfZmVuY2VfbW9kdWxlX2luaXQodm9pZCkNCiB7DQogCXhlX2h3X2ZlbmNlX3NsYWIgPSBrbWVt
X2NhY2hlX2NyZWF0ZSgieGVfaHdfZmVuY2UiLA0KQEAgLTQ3LDYgKzQ5LDE2IEBAIHN0YXRpYyB2
b2lkIGZlbmNlX2ZyZWUoc3RydWN0IHJjdV9oZWFkICpyY3UpDQogCQlrbWVtX2NhY2hlX2ZyZWUo
eGVfaHdfZmVuY2Vfc2xhYiwgZmVuY2UpOw0KIH0NCiANCitzdGF0aWMgYm9vbCB4ZV9od19mZW5j
ZV9zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2UpDQorew0KKwlzdHJ1Y3QgeGVf
aHdfZmVuY2UgKmZlbmNlID0gdG9feGVfaHdfZmVuY2UoZG1hX2ZlbmNlKTsNCisJc3RydWN0IHhl
X2RldmljZSAqeGUgPSBmZW5jZS0+eGU7DQorCXUzMiBzZXFubyA9IHhlX21hcF9yZCh4ZSwgJmZl
bmNlLT5zZXFub19tYXAsIDAsIHUzMik7DQorDQorCXJldHVybiBkbWFfZmVuY2UtPmVycm9yIHx8
DQorCQkhX19kbWFfZmVuY2VfaXNfbGF0ZXIoZG1hX2ZlbmNlLCBkbWFfZmVuY2UtPnNlcW5vLCBz
ZXFubyk7DQorfQ0KKw0KIHN0YXRpYyB2b2lkIGh3X2ZlbmNlX2lycV9ydW5fY2Ioc3RydWN0IGly
cV93b3JrICp3b3JrKQ0KIHsNCiAJc3RydWN0IHhlX2h3X2ZlbmNlX2lycSAqaXJxID0gY29udGFp
bmVyX29mKHdvcmssIHR5cGVvZigqaXJxKSwgd29yayk7DQpAQCAtNjAsNyArNzIsOSBAQCBzdGF0
aWMgdm9pZCBod19mZW5jZV9pcnFfcnVuX2NiKHN0cnVjdCBpcnFfd29yayAqd29yaykNCiAJCQlz
dHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2UgPSAmZmVuY2UtPmRtYTsNCiANCiAJCQl0cmFjZV94
ZV9od19mZW5jZV90cnlfc2lnbmFsKGZlbmNlKTsNCi0JCQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25h
bGVkX2xvY2tlZChkbWFfZmVuY2UpKSB7DQorCQkJaWYgKGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVk
X2ZsYWcoZG1hX2ZlbmNlKSB8fA0KKwkJCSAgICB4ZV9od19mZW5jZV9zaWduYWxlZChkbWFfZmVu
Y2UpKSB7DQorCQkJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGRtYV9mZW5jZSk7DQogCQkJCXRy
YWNlX3hlX2h3X2ZlbmNlX3NpZ25hbChmZW5jZSk7DQogCQkJCWxpc3RfZGVsX2luaXQoJmZlbmNl
LT5pcnFfbGluayk7DQogCQkJCWRtYV9mZW5jZV9wdXQoZG1hX2ZlbmNlKTsNCkBAIC0xMjAsOCAr
MTM0LDYgQEAgdm9pZCB4ZV9od19mZW5jZV9jdHhfZmluaXNoKHN0cnVjdCB4ZV9od19mZW5jZV9j
dHggKmN0eCkNCiB7DQogfQ0KIA0KLXN0YXRpYyBzdHJ1Y3QgeGVfaHdfZmVuY2UgKnRvX3hlX2h3
X2ZlbmNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCi0NCiBzdGF0aWMgc3RydWN0IHhlX2h3
X2ZlbmNlX2lycSAqeGVfaHdfZmVuY2VfaXJxKHN0cnVjdCB4ZV9od19mZW5jZSAqZmVuY2UpDQog
ew0KIAlyZXR1cm4gY29udGFpbmVyX29mKGZlbmNlLT5kbWEuZXh0ZXJuX2xvY2ssIHN0cnVjdCB4
ZV9od19mZW5jZV9pcnEsDQpAQCAtMTQyLDE2ICsxNTQsNiBAQCBzdGF0aWMgY29uc3QgY2hhciAq
eGVfaHdfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNl
KQ0KIAlyZXR1cm4gZmVuY2UtPm5hbWU7DQogfQ0KIA0KLXN0YXRpYyBib29sIHhlX2h3X2ZlbmNl
X3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZSkNCi17DQotCXN0cnVjdCB4ZV9o
d19mZW5jZSAqZmVuY2UgPSB0b194ZV9od19mZW5jZShkbWFfZmVuY2UpOw0KLQlzdHJ1Y3QgeGVf
ZGV2aWNlICp4ZSA9IGZlbmNlLT54ZTsNCi0JdTMyIHNlcW5vID0geGVfbWFwX3JkKHhlLCAmZmVu
Y2UtPnNlcW5vX21hcCwgMCwgdTMyKTsNCi0NCi0JcmV0dXJuIGRtYV9mZW5jZS0+ZXJyb3IgfHwN
Ci0JCSFfX2RtYV9mZW5jZV9pc19sYXRlcihkbWFfZmVuY2UsIGRtYV9mZW5jZS0+c2Vxbm8sIHNl
cW5vKTsNCi19DQotDQogc3RhdGljIGJvb2wgeGVfaHdfZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhz
dHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2UpDQogew0KIAlzdHJ1Y3QgeGVfaHdfZmVuY2UgKmZl
bmNlID0gdG9feGVfaHdfZmVuY2UoZG1hX2ZlbmNlKTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
