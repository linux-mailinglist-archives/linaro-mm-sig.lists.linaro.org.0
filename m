Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WT4KMAl4Q2oKZAoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:02:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F21A6E17FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:02:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=fRqdlOmV;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06B9240AF5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 08:02:15 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 53D1240AC8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 08:01:22 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4631679f204so172965f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 01:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782806481; x=1783411281; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YI/jgLaFSFJaOYv0jGHZTjandLkO9uhSh+X6he+epaA=;
        b=fRqdlOmVytI823p+vxCwaN2zqeyWs1feebC0Ps4tmoQUnQhvwBkD6pzmfWFvDzSnh1
         QtuNH0krVeTsSLmR6CZ7jLfYpdDkzwy1NQFst6gnfBvWtq0nT7Kr/IO9sepUKMV/ziKP
         3Dd304RnzUWkENj5X/885RF04Jrh5Fd+InrVKaPz6wlU8HQOQpS41xy1PWBS1L8xtSvv
         I+shu06gPdwrwShh1TD/qiiF+kFMh0AEvVkSJUPsqyOB4Vz6SZY7owKDSnjMxvbZxk/z
         cr03FsNeifcZ3iafugCxM/G4fb/yNj3WqMyzM0MtdqdUGjU9pE3EEcjdvQyz+hQ4dMQU
         cAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782806481; x=1783411281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YI/jgLaFSFJaOYv0jGHZTjandLkO9uhSh+X6he+epaA=;
        b=dXmtNkp4R0b4vvxg3nFJ9DUOdAv6cDvMp4XAB0MJLiuPLeQXbKeNwoS4PPDEcpGWFl
         35Ra4Gs/OSR9EmjKEv2bKtYc9GB7IEqHyd1FMwHUkPnLltmGuWeiWiadwzgA5nP6Ei8i
         yXupoGEfmiNYsdWf9rZW5eTy3D+nitJTA/YHq0rwnRxabLmz5XvW7lqAyEmkRHxbuPwk
         JlwFhY5htfpcY9pFevStNBwc1o3XsOF3GBxHfmteAfGzB0bygrM1bY3xywzTGHzJSyKS
         Mh/HPFHzScmlaFQ+z5FIsJkNYMTEWdNPA8PucVl8FUNI3ULGntTpprcEH/dlYajfgsKd
         PKZw==
X-Forwarded-Encrypted: i=1; AHgh+RprEtz7iug4mmK4HnEzS9BG3fVOnny738uF/9fTK6SY5i/iYc4RExPSJQSaI4z4zwbXelo8TNOs1FMPdM8/@lists.linaro.org
X-Gm-Message-State: AOJu0YzziI2pPRHX8YIoRRKOeOviDPyROXuLk2a+ymueUBuF154LIQOU
	Ji1C3TD1hUvqBcmvIpTWA2kCCkY1RgYKYeZpHpULr9f1MYXfwshh0fqP
X-Gm-Gg: AfdE7ckPlDrwX8s/EWlR0L9yBJ753VdCoxBBFfHsakCgbRc/8YvhFS603wlEx4hRzFL
	y7bhTbyG0bTESRYK2zCNMBf0p4+GPR8DsDHEnwurVSmlVeAesA6UdTKETXl+0JNHQhPDm+UAbHJ
	+jAHag53ATMr3AQS2WfKpxmEDvukvPVpyDBS82RxatT9182MBqlwAJ1WVJMDDhKE+8zT4aunI+F
	mvFldOaAP07ZD2WGh3HeUPmh8MboxnS4esZUIRv4p9mJwGB96fHaluLe2/iuY+HPz2BjGERTHjL
	7OnKkIQhKzHYqgJHz6iNyRP46JlAMqL+CsKKq0YyariApovmjmg2MWK8ZseinknOPN5zPqOg98d
	YxdzhcUfWImku+56Zy+MO6pBoynk+Wv0LyGNGSoH7ZxMkuCwuRdRCJo0ZfEOFLtmIGPeTpcTS1v
	VsBtBcBWycJnpjYBS4bjYY6mIyXdL7Wyc=
X-Received: by 2002:a05:6000:46c7:b0:472:1424:fc7c with SMTP id ffacd0b85a97d-475de54e182mr792784f8f.10.1782806480868;
        Tue, 30 Jun 2026 01:01:20 -0700 (PDT)
Received: from laptop.fritz.box (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-475671d0403sm5651837f8f.29.2026.06.30.01.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 01:01:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	lizhi.hou@amd.com,
	Max.Zhen@amd.com,
	Mario.Limonciello@amd.com,
	airlied@gmail.com,
	karol.wachowski@linux.intel.com
Date: Tue, 30 Jun 2026 10:01:12 +0200
Message-ID: <20260630080112.1117341-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 3COX2XB3BK5PZQQQ6ULALQYYEYVVLR5E
X-Message-ID-Hash: 3COX2XB3BK5PZQQQ6ULALQYYEYVVLR5E
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: explicitely forbid exposing pages from get_user_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3COX2XB3BK5PZQQQ6ULALQYYEYVVLR5E/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,gmail.com,linux.intel.com];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lizhi.hou@amd.com,m:Max.Zhen@amd.com,m:Mario.Limonciello@amd.com,m:airlied@gmail.com,m:karol.wachowski@linux.intel.com,m:christian.koenig@amd.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F21A6E17FF

V2UgcmVjZW50bHkgaGFkIGFub3RoZXIgaW5jaWRlbnQgd2hlcmUgdHdvIGRyaXZlcnMgcHV0IHBh
Z2VzIHRoZXkgZ290IGZyb20NCmdldF91c2VyX3BhZ2VzKCkgaW50byBhIERNQS1idWYgYW5kIGNh
dXNlIHF1aXRlIGEgbnVtYmVyIG9mIHByb2JsZW1zLg0KDQpFeHBsaWNpdGVseSBkb2N1bWVudCB0
aGF0IHRoaXMgaXMgbm90IHNvbWV0aGluZyBleHBvcnRlcnMgY2FuIGRvLg0KDQpTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBk
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgOCArKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCA3MWYzNzU0NGE1YzYuLmFhNWFmNGY0
MzljMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC02ODUsNiArNjg1LDE0IEBAIHN0YXRpYyBzdHJ1Y3Qg
ZmlsZSAqZG1hX2J1Zl9nZXRmaWxlKHNpemVfdCBzaXplLCBpbnQgZmxhZ3MpDQogICoNCiAgKiBG
b3IgdGhlIGRldGFpbGVkIHNlbWFudGljcyBleHBvcnRlcnMgYXJlIGV4cGVjdGVkIHRvIGltcGxl
bWVudCBzZWUNCiAgKiAmZG1hX2J1Zl9vcHMuDQorICoNCisgKiBJdCBpcyBleHBsaWNpdGVseSBm
b3JiaWRkZW4gZm9yIGV4cG9ydGVycyB0byBleHBvc2UgYnVmZmVycyB0aGV5IGRvbid0ICJvd24i
DQorICogYXMgRE1BLWJ1Zi4gVGhpcyBpbmNsdWRlcyBwYWdlcyBhY3F1aXJlZCBieSBnZXRfdXNl
cl9wYWdlcygpIG9yIG90aGVyIGltcG9ydA0KKyAqIG1lY2hhbmlzbS4gTm90IGZvbGxvd2luZyB0
aGlzIHJ1bGUgY2FuIGNyZWF0ZSBudW1lcm91cyBzZWN1cml0eSBwcm9ibGVtcy4NCisgKg0KKyAq
IEl0IGlzIGFsc28gc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gZXhwb3NlIHRoZSBzYW1lIGJhY2tp
bmcgc3RvcmUgdGhyb3VnaA0KKyAqIG11bHRpcGxlIERNQS1idWZzIGF0IHRoZSBzYW1lIHRpbWUu
IFRoaXMgZXZlbnR1YWxseSBjcmVhdGVzIGFsaWFzaW5nIGFuZA0KKyAqIGNhY2hlIGNvaGVyZW5j
eSBwcm9ibGVtcyB3aGljaCBhcmUgZXh0cmVtZWx5IGhhcmQgdG8gZGVidWcgYW5kIGZpeC4NCiAg
Ki8NCiANCiAvKioNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
