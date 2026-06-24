Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wa1gHurNO2qmdQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E516BE1F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=LxQ0ZGpP;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5706340B0D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:30:33 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 5468F40A7A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:27 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-490b64c8311so12335695e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304166; x=1782908966; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CTDR2FGDDMlL0SKna41UWrjV6rjHoFlolha4zevYi4s=;
        b=LxQ0ZGpPmHyaQltdH54pjo7IDXZoZ/u+I4Wv4g+kDqIBLioFzoEU6VSSSzDkphrkbf
         VqcjsXDTyeh/un+uGrZmcm1J3o69WR65xrkJTIwGshUh28LtE3T43OzEAPkILhLC+1Hm
         JPRxrQ0vDTMYPo+c+HlK9OQd7I+OwNqBIMhemjT4WVX7UK+jL1V32srosgOhJ+XgvTfp
         M55D/ojrBiv52PXZit37cLgpqvxVYPKyRhMstK0pIylwaKbeWFGCCGzXTBv+RP3kfxQS
         RVkpuyMmm5IejVnXRhZGcGyZzXDQ/yu5xQRZFePop89jyDrc8T9hN8AQnRsep+BwNIhO
         LQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304166; x=1782908966;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CTDR2FGDDMlL0SKna41UWrjV6rjHoFlolha4zevYi4s=;
        b=YBqLO08tYmJSK5dqXdCJYdspuZTMs1S4y5yAxpDK5iCghK9wo+JQRr7p9DHe2UcNka
         MGvgM7cnuTsWnfuT3HWVNiO5uO9wmsghP87vOOWIteNeLzqXTp3VnFVjmm9fp62WtK1f
         O5cHaeMcrrkO6Ozjqe4ha1LItGDxhIvBth42v7y0Nt47BLWPJofBJeaY3aQhC4GTH7JK
         Nxq0qDgjMpCO85tNdK5jTSx53BDPqpqeMgzxuLMMcrcJ2AsL8cGyN6ovVLR6rF0/sWBG
         iHHzQRELAxayPk4EizI89E5hGnMj3d+GFaSxDYGML6+l5wQIAXBdLXEP6uSnH0V6tbuF
         PfUw==
X-Forwarded-Encrypted: i=1; AFNElJ/NmhfVpyyMwanEYKtM+JIVTktYHcH8J8LstHn79CE1aeHT1XiUyANXio9YeDStuCPxEyO77nNWNBh7WD8z@lists.linaro.org
X-Gm-Message-State: AOJu0YwIuoQ0cLRPTUuDOsAMzxSGCQ5GlSi2pTkAahE9J0Pm3FZuMY3D
	Ncyo4YsQu90f3sakkLJS7KdAxUD2UllNJq2jn2ZOvsZwtfRuCWU227cs
X-Gm-Gg: AfdE7ckP9CPu/MDfAubnsaem96WmJOnu4pRpiBphJp06cydaHvoUu76eNPqqc+ucj59
	562wmZBTj1DPWsBTmNdPMdCftPyfi5jbe6lCkU48bIdyHlYDwDS9Q6j+R/XBQ/RAS7CaPRkPUiM
	cKugs0Ey0bbc52DAsCoPIgHtk8efu1rIcSs2vynTYcjRp5SVfD1/kTjsbnXdoprY6T01RvLjkuY
	eYyj8OJivJZweRsY7VVjs8Pa7BJ9fl3xfppCYdaNUSs9SJ4PFXM5e0Xp6KO6jZFzX9vUGm7FXV3
	9r9PyeKOLxjCBRmee8k7MeWz07HcH8nu9twn+WtISuQmIetXqx2k5US+P8r1I/6kBLwZKAs+oGO
	rDgdryIADEcaYjoFPJThSxF8fckDqXi/NIzIAuvLMzhf1RUfimUUvtMI7JBCO9vUS73i1xiWLVN
	Kul5Vi330vgGYuFo9u1R0XH72Zq2vgwxyWMWyc
X-Received: by 2002:a05:600c:ac8:b0:490:b7e6:bd1d with SMTP id 5b1f17b1804b1-4926084d209mr36077205e9.16.1782304166289;
        Wed, 24 Jun 2026 05:29:26 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:31 +0200
Message-ID: <20260624122917.2483-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: TQDUBZZBPRGEDYEZCGUBAAMXLBUNUQUZ
X-Message-ID-Hash: TQDUBZZBPRGEDYEZCGUBAAMXLBUNUQUZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 07/10] dma-buf: remove dma_fence_is_signaled_locked()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TQDUBZZBPRGEDYEZCGUBAAMXLBUNUQUZ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:replyto,amd.com:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47E516BE1F0

RmluYWxseSByZW1vdmUgb25lIG9mIHRoZSBiaWdnZXN0IHRyb3VibGUgbWFrZXJzIGluIHRoZSBk
bWFfZmVuY2UNCmhhbmRsaW5nLg0KDQpUaGUgc2lnbmFsZWQgY2FsbGJhY2sgaXMgbm93IGNvbnNp
c3RlbnRseSBjYWxsZWQgd2l0aG91dCBob2xkaW5nIHRoZQ0KZG1hX2ZlbmNlIGxvY2suDQoNClNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
Ci0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCAzNiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMzYgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaA0KaW5kZXggODAzZTEwY2E3NmUzLi5hZDY5YWNiZWEyMTggMTAwNjQ0DQotLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5o
DQpAQCAtNDkzLDQwICs0OTMsNiBAQCBkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQ0KIAlyZXR1cm4gdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lH
TkFMRURfQklULCAmZmVuY2UtPmZsYWdzKTsNCiB9DQogDQotLyoqDQotICogZG1hX2ZlbmNlX2lz
X3NpZ25hbGVkX2xvY2tlZCAtIFJldHVybiBhbiBpbmRpY2F0aW9uIGlmIHRoZSBmZW5jZQ0KLSAq
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpcyBzaWduYWxlZCB5ZXQuDQotICogQGZl
bmNlOiB0aGUgZmVuY2UgdG8gY2hlY2sNCi0gKg0KLSAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgZmVu
Y2Ugd2FzIGFscmVhZHkgc2lnbmFsZWQsIGZhbHNlIGlmIG5vdC4gU2luY2UgdGhpcw0KLSAqIGZ1
bmN0aW9uIGRvZXNuJ3QgZW5hYmxlIHNpZ25hbGluZywgaXQgaXMgbm90IGd1YXJhbnRlZWQgdG8g
ZXZlciByZXR1cm4NCi0gKiB0cnVlIGlmIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKSwgZG1hX2Zl
bmNlX3dhaXQoKSBvcg0KLSAqIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCkgaGF2ZW4n
dCBiZWVuIGNhbGxlZCBiZWZvcmUuDQotICoNCi0gKiBUaGlzIGZ1bmN0aW9uIHJlcXVpcmVzICZk
bWFfZmVuY2UubG9jayB0byBiZSBoZWxkLg0KLSAqDQotICogU2VlIGFsc28gZG1hX2ZlbmNlX2lz
X3NpZ25hbGVkKCkuDQotICovDQotc3RhdGljIGlubGluZSBib29sDQotZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCi17DQotCWNvbnN0IHN0cnVj
dCBkbWFfZmVuY2Vfb3BzICpvcHM7DQotDQotCWlmIChkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9m
bGFnKGZlbmNlKSkNCi0JCXJldHVybiB0cnVlOw0KLQ0KLQlyY3VfcmVhZF9sb2NrKCk7DQotCW9w
cyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcyAmJiBvcHMtPnNpZ25h
bGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQotCQlyY3VfcmVhZF91bmxvY2soKTsNCi0J
CWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsNCi0JCXJldHVybiB0cnVlOw0KLQl9DQot
CXJjdV9yZWFkX3VubG9jaygpOw0KLQ0KLQlyZXR1cm4gZmFsc2U7DQotfQ0KLQ0KIC8qKg0KICAq
IGRtYV9mZW5jZV9pc19zaWduYWxlZCAtIFJldHVybiBhbiBpbmRpY2F0aW9uIGlmIHRoZSBmZW5j
ZSBpcyBzaWduYWxlZCB5ZXQuDQogICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gY2hlY2sNCkBAIC01
NDAsOCArNTA2LDYgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSkNCiAgKiBvcGVyYXRpb24gaXMgY29tcGxldGUsIGl0IG1ha2VzIGl0IHBvc3Np
YmxlIHRvIHByZXZlbnQgaXNzdWVzIGZyb20NCiAgKiB3cmFwYXJvdW5kIGJldHdlZW4gdGltZSBv
ZiBpc3N1ZSBhbmQgdGltZSBvZiB1c2UgYnkgY2hlY2tpbmcgdGhlIHJldHVybg0KICAqIHZhbHVl
IG9mIHRoaXMgZnVuY3Rpb24gYmVmb3JlIGNhbGxpbmcgaGFyZHdhcmUtc3BlY2lmaWMgd2FpdCBp
bnN0cnVjdGlvbnMuDQotICoNCi0gKiBTZWUgYWxzbyBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9j
a2VkKCkuDQogICovDQogc3RhdGljIGlubGluZSBib29sDQogZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
