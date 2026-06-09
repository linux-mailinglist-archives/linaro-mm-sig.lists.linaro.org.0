Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IrFwFFocKGp2+AIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 15:59:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C97D9660CAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 15:59:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=D1NhJRHL;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C4EB409B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jun 2026 13:59:52 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 29C4C3F827
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 13:59:43 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490cf3000f0so27660715e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Jun 2026 06:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781013582; x=1781618382; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lCCMGdSYRe1FraxjZBzJ24lH0mO4Ml3X3ulO1yg3ewI=;
        b=D1NhJRHLahmXKopKrchl0vaSfyRbf7MrWXXEQvWi6kg4zz3EYfNs9L1pyYNaNakva9
         EAPYBfwNED31RB+PgXZezbjLUsRfYEbP+UINBu6mkj5NNvDlpZrnAp/3TETE1Ns7lI5d
         an7F/q1VTRgedjF+OHhV6X1xtCFoN256stMp4VWGcGpRyFjdsauwv4rWUunPPlHOwLMW
         r9zsLHIb+ochNdfXL+sNH0IcwRbDpgKMmEOVQgyAY/OAPXCjhY2R96QFihGlkXO3koBO
         s92TdMM5fXqwUuBclroDpT2qIDiIdYtygi68z/15WVg/AqGSa9YCHAQVSCbQ5SgvLvza
         Sl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781013582; x=1781618382;
        h=content-transfer-encoding:reply-to:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lCCMGdSYRe1FraxjZBzJ24lH0mO4Ml3X3ulO1yg3ewI=;
        b=lJrjoOWLNavoCHHxbnZJ5iaFTG5awjFJLPNm31CJ4W9rUA25c7NWIZcuXi7Wt0xBbQ
         e6LQj4T8MNBTY1KoYYr7ac2/X+pHfFFjc5/8SVh8PLv4otsrr4CT0zYCiDWQAlU7qabx
         kJP2e3weHweFsAYHiz+ydKKaNCSt0c6u4azSc0s1x1MEWrAfdB/OPybqdF2DvrS7oF8r
         pY+Zpo3x6DSw2ffy481efHmIdeDtIfOtyGH6lbj0dbA3DsvUNv5Ifk1LvCEYRAd895tS
         JTCOZfXk95NASaSVMrplh8xpUj0Fa3Y0D+TZNV4xIFJdiliIWvth+Fby12UwaeXn7u9r
         oqow==
X-Forwarded-Encrypted: i=1; AFNElJ8zgkFt1mw4gTYmw5c8wn20P5HNcBXxH+p3KCpVtkgE2Ddu3N8uPVz8yMLYlvc+ewUl6KdQz7XFQ4oKkrYx@lists.linaro.org
X-Gm-Message-State: AOJu0YxRImq8sBJ9dhTWF+235X07OS4ZVPr7uS3O5oS7yzxqG42JxR6v
	SDK+yNSssh/Soe4TAX7CuNVzcPLlXuAIpDPdrQXNqVMm7JTVuUgT61Ek
X-Gm-Gg: Acq92OHL8Jarn/P/k3uGtgf1iel4sXVt17rNlUI0trV5UdQ3/hylzXOgh/QgWQ4Rayv
	37D1mqcEQeT3X+QMY6uooZ78mrmtZ7+bWHu+ClMoPbxkjXLUUM/ZGGwa3KEfq/5xEq1QEBPUYwT
	qpltV/uY/BGZoN9oFa6VBiX91P6zKhjyivjsugwsNygiVng9Ak5mcDReMauH/KGsPlVzoCQ3Xci
	7DPKVlOaijt3ctPUkMpefWVgLWF3RxHiWwKhaYoXkxBIxFZiorYYP2NKJXCOw2f5+iJtp1dVDgp
	q5e2HMqblRScixV4RtiOr77AKrw9xUJuMY/9Pfn9k3gFqzq1NlYoTH27025B43qyz13jsGdFTWt
	NW71V/MlUnRUYZX+Gm1g/jg3OiO9KgEy8eBa5Rf/QB56FCKDDiZ9Sof4ho41LY3vKI2PzSJuKoZ
	O/l3U4O1T832kLtgVPIYVqPrDq6VCKjf+4cQJnnkyB5qEw9MQ=
X-Received: by 2002:a05:600c:34c9:b0:490:688b:f10d with SMTP id 5b1f17b1804b1-490c25b3549mr347976035e9.7.1781013581993;
        Tue, 09 Jun 2026 06:59:41 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1548:4e00:defa:44a8:8592:150b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3d663csm537658365e9.11.2026.06.09.06.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 06:59:41 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	sumit.semwal@linaro.org
Date: Tue,  9 Jun 2026 15:59:39 +0200
Message-ID: <20260609135939.2606-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: MD5LMLBNATWD4TI35PK3PHZ6HQK4GHVY
X-Message-ID-Hash: MD5LMLBNATWD4TI35PK3PHZ6HQK4GHVY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH] dma-buf: enable sg_table wrapping on CONFIG_DEBUG
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MD5LMLBNATWD4TI35PK3PHZ6HQK4GHVY/>
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
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:email,amd.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C97D9660CAE

SW1wb3J0ZXJzIG5vdG9yaW91c2x5IGFidXNlZCB0aGUgc3RydWN0IHBhZ2UgcG9pbnRlcnMgZnJv
bSB0aGUgc2dfdGFibGUgdGhlDQpETUEtYnVmIGV4cG9ydGVyIHByb3ZpZGVzLiBUaGlzIGhhcyBj
cmVhdGVkIG51bWVyb3VzIHByb2JsZW1zIHJhbmdpbmcgZnJvbQ0KY3Jhc2hlcyBvdmVyIHJhbmRv
bSBtZW1vcnkgY29ycnVwdGlvbiB0byBzZWN1cml0eSBpc3N1ZXMuDQoNClRvIGZpbmQgc3VjaCBi
YWQgaW1wb3J0ZXJzIERNQS1idWYgYWxyZWFkeSBoYXMgYSBmdW5jdGlvbmFsaXR5IHRvIHdyYXAg
dGhlDQpzZ190YWJsZSBhbmQgc2V0IHRoZSBwYWdlIHBvaW50ZXJzIHRvIE5VTEwgZW5hYmxlZCB1
bmRlciBDT05GSUdfRE1BQlVGX0RFQlVHLg0KDQpDaGFuZ2UgdGhhdCB0byBqdXN0IENPTkZJR19E
RUJVRyB0byBjYXRjaCBldmVuIG1vcmUgaW1wb3J0ZXJzIGRvaW5nIHNvbWV0aGluZw0KbmFzdHku
DQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0ICsrLS0NCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmlu
ZGV4IDcxZjM3NTQ0YTVjNi4uZDVkZmE4MmVkMmRkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTg1Nyw3
ICs4NTcsNyBAQCBzdGF0aWMgaW50IGRtYV9idWZfd3JhcF9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFi
bGUgKipzZ190YWJsZSkNCiAJc3RydWN0IGRtYV9idWZfc2dfdGFibGVfd3JhcHBlciAqdG87DQog
CWludCBpLCByZXQ7DQogDQotCWlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkN
CisJaWYgKCFJU19FTkFCTEVEKENPTkZJR19ERUJVRykpDQogCQlyZXR1cm4gMDsNCiANCiAJLyoN
CkBAIC04OTYsNyArODk2LDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl91bndyYXBfc2dfdGFibGUo
c3RydWN0IHNnX3RhYmxlICoqc2dfdGFibGUpDQogew0KIAlzdHJ1Y3QgZG1hX2J1Zl9zZ190YWJs
ZV93cmFwcGVyICpjb3B5Ow0KIA0KLQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9ERUJV
RykpDQorCWlmICghSVNfRU5BQkxFRChDT05GSUdfREVCVUcpKQ0KIAkJcmV0dXJuOw0KIA0KIAlj
b3B5ID0gY29udGFpbmVyX29mKCpzZ190YWJsZSwgdHlwZW9mKCpjb3B5KSwgd3JhcHBlcik7DQot
LSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
