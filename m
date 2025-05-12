Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 95064AB3F6F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 19:42:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEB16454E2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 17:42:29 +0000 (UTC)
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com [209.85.210.201])
	by lists.linaro.org (Postfix) with ESMTPS id 369D645F4F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 17:41:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=zTgsdjSD;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3sDIiaAkKDeUaQTLYJPLYNVVNSL.JVTSPUHYV-TT-ZPNSPZaZ.SPUHYV.VYN@flex--tjmercier.bounces.google.com designates 209.85.210.201 as permitted sender) smtp.mailfrom=3sDIiaAkKDeUaQTLYJPLYNVVNSL.JVTSPUHYV-TT-ZPNSPZaZ.SPUHYV.VYN@flex--tjmercier.bounces.google.com
Received: by mail-pf1-f201.google.com with SMTP id d2e1a72fcca58-73c09e99069so5615651b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 10:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747071664; x=1747676464; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sCGxx2XfGsewNgZCW3IbIozmrin1Wu5z7ijIKVfw2+I=;
        b=zTgsdjSD5ixpDTQWi6hWZQ109bPmsT3m46WcyGI4/pIcq0SZB+xg6DSkUs088D6oG+
         Mimuqeh+yzXvoTT/7oekaeRZzuI0pDSSP2erkhtQfucvMlfWqaOcQ4jEQylvW40xrx6N
         u4BScignq8WdypvtH4QGOC5rg3IPZ5QEZ8veoau4OhSp6j+0OhUl6i7w+tNf92AsEjrV
         P/sn155rLez1gbd2cXJrdujvHFi31cKa4/4NHxJn6Y243nML7ptjGDE/tNLgmmjHA96h
         xhjfpwzXucwRScS7qJbx6s1vEqKezakYpY5HIcTSgGaKuSktfUsBrfPYdSJKPe3hYLK9
         0AZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747071664; x=1747676464;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sCGxx2XfGsewNgZCW3IbIozmrin1Wu5z7ijIKVfw2+I=;
        b=Hj2CVaJhQNfWMG3rhN4AGqGJHtK8TTqcfSmHLQJu8nK71pzqAUN3Qfbgw4ReQXQJ/b
         NXL059MntVCbsYjUIGrVyk6pQaetV4Jr3Lcmujn4+x4nhvA/3F7taUr6iq/mom57vUQ9
         wSo3eNklD015IG0f/OBM3ggLTSMSszmpL46F9NXSdmCdJRGor/ZorKRLAmkXU6MGd3XR
         EJ9z5403CyZgqCkulpbXG3e4DGuNMwB6jo/WwvqyDR/nPT3LqYxQULAr6DafapES/qAb
         szRr/eFX/1xVnv6b5BKDSfPnUGQ9OCWiUoMiq0jUiTJDqIgFd1tilgff1/ZtfzhkC2cT
         8d3g==
X-Forwarded-Encrypted: i=1; AJvYcCW1WHb4PKTPrLR8iEgzpKep84YNe95Bw/hvtuDmo4R4p3c3AZg/BwL5JC9jMMpc0yZy9Df4lxtVVsVtoL3W@lists.linaro.org
X-Gm-Message-State: AOJu0Yym8EGtxixRtNOMQnPqV1NhcDwkh0L2yoelCj34qDa6cMwK5G+8
	kfgJO9L6hRCh3efKEHM3Ps3PszcZQXL4qkqlvEkCP13VD9rlujcUoj0GwmoOhQ/bh3anRefCRbV
	sA6unYL/2mfiBkA==
X-Google-Smtp-Source: AGHT+IFLBGzKFZmsktbIeW8pxhnG9+8Euh8hihVcHszDWEwnIoCPLdtI1rxSOPsP9ipwfFfbMW9NefHkQ4HZoLE=
X-Received: from pfoo10.prod.google.com ([2002:a05:6a00:1a0a:b0:732:20df:303c])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:2313:b0:736:692e:129 with SMTP id d2e1a72fcca58-7423c0421e7mr21330789b3a.24.1747071664262;
 Mon, 12 May 2025 10:41:04 -0700 (PDT)
Date: Mon, 12 May 2025 17:40:36 +0000
In-Reply-To: <20250512174036.266796-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250512174036.266796-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250512174036.266796-6-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 369D645F4F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3sDIiaAkKDeUaQTLYJPLYNVVNSL.JVTSPUHYV-TT-ZPNSPZaZ.SPUHYV.VYN@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.201:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[amd.com:email];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3sDIiaAkKDeUaQTLYJPLYNVVNSL.JVTSPUHYV-TT-ZPNSPZaZ.SPUHYV.VYN@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: MJR33LC3PQ5ZFUD3FL3C4DFSKHJXAU4R
X-Message-ID-Hash: MJR33LC3PQ5ZFUD3FL3C4DFSKHJXAU4R
X-MailFrom: 3sDIiaAkKDeUaQTLYJPLYNVVNSL.JVTSPUHYV-TT-ZPNSPZaZ.SPUHYV.VYN@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v5 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MJR33LC3PQ5ZFUD3FL3C4DFSKHJXAU4R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIHRoZSBzYW1lIHRlc3QgYnVmZmVycyBhcyB0aGUgdHJhZGl0aW9uYWwgaXRlcmF0b3IgYW5k
IGEgbmV3IEJQRiBtYXANCnRvIHZlcmlmeSB0aGUgdGVzdCBidWZmZXJzIGNhbiBiZSBmb3VuZCB3
aXRoIHRoZSBvcGVuIGNvZGVkIGRtYWJ1Zg0KaXRlcmF0b3IuDQoNClNpZ25lZC1vZmYtYnk6IFQu
Si4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogLi4uL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9icGZfZXhwZXJpbWVudGFsLmggIHwgIDUgKysrDQogLi4uL3NlbGZ0ZXN0cy9icGYv
cHJvZ190ZXN0cy9kbWFidWZfaXRlci5jICAgIHwgNDIgKysrKysrKysrKysrKysrKystLQ0KIC4u
Li90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIuYyB8IDM4ICsrKysrKysr
KysrKysrKysrDQogMyBmaWxlcyBjaGFuZ2VkLCA4MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KDQpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBl
cmltZW50YWwuaCBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfZXhwZXJpbWVudGFs
LmgNCmluZGV4IDY1MzVjOGFlM2M0Ni4uNWU1MTJhMWQwOWQxIDEwMDY0NA0KLS0tIGEvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmltZW50YWwuaA0KKysrIGIvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmltZW50YWwuaA0KQEAgLTU5MSw0ICs1OTEsOSBA
QCBleHRlcm4gaW50IGJwZl9pdGVyX2ttZW1fY2FjaGVfbmV3KHN0cnVjdCBicGZfaXRlcl9rbWVt
X2NhY2hlICppdCkgX193ZWFrIF9fa3N5bQ0KIGV4dGVybiBzdHJ1Y3Qga21lbV9jYWNoZSAqYnBm
X2l0ZXJfa21lbV9jYWNoZV9uZXh0KHN0cnVjdCBicGZfaXRlcl9rbWVtX2NhY2hlICppdCkgX193
ZWFrIF9fa3N5bTsNCiBleHRlcm4gdm9pZCBicGZfaXRlcl9rbWVtX2NhY2hlX2Rlc3Ryb3koc3Ry
dWN0IGJwZl9pdGVyX2ttZW1fY2FjaGUgKml0KSBfX3dlYWsgX19rc3ltOw0KIA0KK3N0cnVjdCBi
cGZfaXRlcl9kbWFidWY7DQorZXh0ZXJuIGludCBicGZfaXRlcl9kbWFidWZfbmV3KHN0cnVjdCBi
cGZfaXRlcl9kbWFidWYgKml0KSBfX3dlYWsgX19rc3ltOw0KK2V4dGVybiBzdHJ1Y3QgZG1hX2J1
ZiAqYnBmX2l0ZXJfZG1hYnVmX25leHQoc3RydWN0IGJwZl9pdGVyX2RtYWJ1ZiAqaXQpIF9fd2Vh
ayBfX2tzeW07DQorZXh0ZXJuIHZvaWQgYnBmX2l0ZXJfZG1hYnVmX2Rlc3Ryb3koc3RydWN0IGJw
Zl9pdGVyX2RtYWJ1ZiAqaXQpIF9fd2VhayBfX2tzeW07DQorDQogI2VuZGlmDQpkaWZmIC0tZ2l0
IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIuYyBi
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMNCmlu
ZGV4IDhhZTE4ZTRkNzIzOC4uZDk2MDZmMzM2MWI5IDEwMDY0NA0KLS0tIGEvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIuYw0KKysrIGIvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIuYw0KQEAgLTEwNiwxNSAr
MTA2LDE4IEBAIHN0YXRpYyBpbnQgY3JlYXRlX3N5c19oZWFwX2RtYWJ1Zih2b2lkKQ0KIAlyZXR1
cm4gLTE7DQogfQ0KIA0KLXN0YXRpYyBpbnQgY3JlYXRlX3Rlc3RfYnVmZmVycyh2b2lkKQ0KK3N0
YXRpYyBpbnQgY3JlYXRlX3Rlc3RfYnVmZmVycyhpbnQgbWFwX2ZkKQ0KIHsNCisJYm9vbCBmID0g
ZmFsc2U7DQorDQogCXVkbWFidWYgPSBjcmVhdGVfdWRtYWJ1ZigpOw0KIAlzeXNoZWFwX2RtYWJ1
ZiA9IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoKTsNCiANCiAJaWYgKHVkbWFidWYgPCAwIHx8IHN5
c2hlYXBfZG1hYnVmIDwgMCkNCiAJCXJldHVybiAtMTsNCiANCi0JcmV0dXJuIDA7DQorCXJldHVy
biBicGZfbWFwX3VwZGF0ZV9lbGVtKG1hcF9mZCwgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9uYW1lLCAm
ZiwgQlBGX0FOWSkgfHwNCisJICAgICAgIGJwZl9tYXBfdXBkYXRlX2VsZW0obWFwX2ZkLCBzeXNo
ZWFwX3Rlc3RfYnVmZmVyX25hbWUsICZmLCBCUEZfQU5ZKTsNCiB9DQogDQogc3RhdGljIHZvaWQg
ZGVzdHJveV90ZXN0X2J1ZmZlcnModm9pZCkNCkBAIC0yMTUsMTUgKzIxOCw0NSBAQCBzdGF0aWMg
dm9pZCBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX2RlZmF1bHRfaXRlcihzdHJ1Y3QgZG1hYnVm
X2l0ZXIgKnNrZWwpDQogCWNsb3NlKGl0ZXJfZmQpOw0KIH0NCiANCitzdGF0aWMgdm9pZCBzdWJ0
ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX29wZW5fY29kZWQoc3RydWN0IGRtYWJ1Zl9pdGVyICpza2Vs
LCBpbnQgbWFwX2ZkKQ0KK3sNCisJTElCQlBGX09QVFMoYnBmX3Rlc3RfcnVuX29wdHMsIHRvcHRz
KTsNCisJY2hhciBrZXlbRE1BX0JVRl9OQU1FX0xFTl07DQorCWludCBlcnIsIGZkOw0KKwlib29s
IGZvdW5kOw0KKw0KKwkvKiBObyBuZWVkIHRvIGF0dGFjaCBpdCwganVzdCBydW4gaXQgZGlyZWN0
bHkgKi8NCisJZmQgPSBicGZfcHJvZ3JhbV9fZmQoc2tlbC0+cHJvZ3MuaXRlcl9kbWFidWZfZm9y
X2VhY2gpOw0KKw0KKwllcnIgPSBicGZfcHJvZ190ZXN0X3J1bl9vcHRzKGZkLCAmdG9wdHMpOw0K
KwlpZiAoIUFTU0VSVF9PSyhlcnIsICJ0ZXN0X3J1bl9vcHRzIGVyciIpKQ0KKwkJcmV0dXJuOw0K
KwlpZiAoIUFTU0VSVF9PSyh0b3B0cy5yZXR2YWwsICJ0ZXN0X3J1bl9vcHRzIHJldHZhbCIpKQ0K
KwkJcmV0dXJuOw0KKw0KKwlpZiAoIUFTU0VSVF9PSyhicGZfbWFwX2dldF9uZXh0X2tleShtYXBf
ZmQsIE5VTEwsIGtleSksICJnZXQgbmV4dCBrZXkiKSkNCisJCXJldHVybjsNCisNCisJZG8gew0K
KwkJQVNTRVJUX09LKGJwZl9tYXBfbG9va3VwX2VsZW0obWFwX2ZkLCBrZXksICZmb3VuZCksICJs
b29rdXAiKTsNCisJCUFTU0VSVF9UUlVFKGZvdW5kLCAiZm91bmQgdGVzdCBidWZmZXIiKTsNCisJ
fSB3aGlsZSAoYnBmX21hcF9nZXRfbmV4dF9rZXkobWFwX2ZkLCBrZXksIGtleSkpOw0KK30NCisN
CiB2b2lkIHRlc3RfZG1hYnVmX2l0ZXIodm9pZCkNCiB7DQogCXN0cnVjdCBkbWFidWZfaXRlciAq
c2tlbCA9IE5VTEw7DQorCWludCBtYXBfZmQ7DQogDQogCXNrZWwgPSBkbWFidWZfaXRlcl9fb3Bl
bl9hbmRfbG9hZCgpOw0KIAlpZiAoIUFTU0VSVF9PS19QVFIoc2tlbCwgImRtYWJ1Zl9pdGVyX19v
cGVuX2FuZF9sb2FkIikpDQogCQlyZXR1cm47DQogDQotCWlmICghQVNTRVJUX09LKGNyZWF0ZV90
ZXN0X2J1ZmZlcnMoKSwgImNyZWF0ZV90ZXN0X2J1ZmZlcnMiKSkNCisJbWFwX2ZkID0gYnBmX21h
cF9fZmQoc2tlbC0+bWFwcy50ZXN0YnVmX2hhc2gpOw0KKwlpZiAoIUFTU0VSVF9PS19GRChtYXBf
ZmQsICJtYXBfZmQiKSkNCisJCWdvdG8gZGVzdHJveV9za2VsOw0KKw0KKwlpZiAoIUFTU0VSVF9P
SyhjcmVhdGVfdGVzdF9idWZmZXJzKG1hcF9mZCksICJjcmVhdGVfdGVzdF9idWZmZXJzIikpDQog
CQlnb3RvIGRlc3Ryb3k7DQogDQogCWlmICghQVNTRVJUX09LKGRtYWJ1Zl9pdGVyX19hdHRhY2go
c2tlbCksICJza2VsX2F0dGFjaCIpKQ0KQEAgLTIzMyw4ICsyNjYsMTEgQEAgdm9pZCB0ZXN0X2Rt
YWJ1Zl9pdGVyKHZvaWQpDQogCQlzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX25vX2luZmluaXRl
X3JlYWRzKHNrZWwpOw0KIAlpZiAodGVzdF9fc3RhcnRfc3VidGVzdCgiZGVmYXVsdF9pdGVyIikp
DQogCQlzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX2RlZmF1bHRfaXRlcihza2VsKTsNCisJaWYg
KHRlc3RfX3N0YXJ0X3N1YnRlc3QoIm9wZW5fY29kZWQiKSkNCisJCXN1YnRlc3RfZG1hYnVmX2l0
ZXJfY2hlY2tfb3Blbl9jb2RlZChza2VsLCBtYXBfZmQpOw0KIA0KIGRlc3Ryb3k6DQogCWRlc3Ry
b3lfdGVzdF9idWZmZXJzKCk7DQorZGVzdHJveV9za2VsOg0KIAlkbWFidWZfaXRlcl9fZGVzdHJv
eShza2VsKTsNCiB9DQpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3By
b2dzL2RtYWJ1Zl9pdGVyLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1h
YnVmX2l0ZXIuYw0KaW5kZXggOTAwYTczMGEwNWY2Li41ZjJjYzRmM2RlOTYgMTAwNjQ0DQotLS0g
YS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0ZXIuYw0KKysrIGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMNCkBAIC05LDYg
KzksMTMgQEANCiANCiBjaGFyIF9saWNlbnNlW10gU0VDKCJsaWNlbnNlIikgPSAiR1BMIjsNCiAN
CitzdHJ1Y3Qgew0KKwlfX3VpbnQodHlwZSwgQlBGX01BUF9UWVBFX0hBU0gpOw0KKwlfX3VpbnQo
a2V5X3NpemUsIERNQV9CVUZfTkFNRV9MRU4pOw0KKwlfX3R5cGUodmFsdWUsIGJvb2wpOw0KKwlf
X3VpbnQobWF4X2VudHJpZXMsIDUpOw0KK30gdGVzdGJ1Zl9oYXNoIFNFQygiLm1hcHMiKTsNCisN
CiAvKg0KICAqIEZpZWxkcyBvdXRwdXQgYnkgdGhpcyBpdGVyYXRvciBhcmUgZGVsaW1pdGVkIGJ5
IG5ld2xpbmVzLiBDb252ZXJ0IGFueQ0KICAqIG5ld2xpbmVzIGluIHVzZXItcHJvdmlkZWQgcHJp
bnRlZCBzdHJpbmdzIHRvIHNwYWNlcy4NCkBAIC01MSwzICs1OCwzNCBAQCBpbnQgZG1hYnVmX2Nv
bGxlY3RvcihzdHJ1Y3QgYnBmX2l0ZXJfX2RtYWJ1ZiAqY3R4KQ0KIAlCUEZfU0VRX1BSSU5URihz
ZXEsICIlbHVcbiVsbHVcbiVzXG4lc1xuIiwgaW5vZGUsIHNpemUsIG5hbWUsIGV4cG9ydGVyKTsN
CiAJcmV0dXJuIDA7DQogfQ0KKw0KK1NFQygic3lzY2FsbCIpDQoraW50IGl0ZXJfZG1hYnVmX2Zv
cl9lYWNoKGNvbnN0IHZvaWQgKmN0eCkNCit7DQorCXN0cnVjdCBkbWFfYnVmICpkOw0KKw0KKwli
cGZfZm9yX2VhY2goZG1hYnVmLCBkKSB7DQorCQljaGFyIG5hbWVbRE1BX0JVRl9OQU1FX0xFTl07
DQorCQljb25zdCBjaGFyICpwbmFtZTsNCisJCWJvb2wgKmZvdW5kOw0KKw0KKwkJaWYgKGJwZl9j
b3JlX3JlYWQoJnBuYW1lLCBzaXplb2YocG5hbWUpLCAmZC0+bmFtZSkpDQorCQkJcmV0dXJuIDE7
DQorDQorCQkvKiBCdWZmZXJzIGFyZSBub3QgcmVxdWlyZWQgdG8gYmUgbmFtZWQgKi8NCisJCWlm
ICghcG5hbWUpDQorCQkJY29udGludWU7DQorDQorCQlpZiAoYnBmX3Byb2JlX3JlYWRfa2VybmVs
KG5hbWUsIHNpemVvZihuYW1lKSwgcG5hbWUpKQ0KKwkJCXJldHVybiAxOw0KKw0KKwkJZm91bmQg
PSBicGZfbWFwX2xvb2t1cF9lbGVtKCZ0ZXN0YnVmX2hhc2gsIG5hbWUpOw0KKwkJaWYgKGZvdW5k
KSB7DQorCQkJYm9vbCB0ID0gdHJ1ZTsNCisNCisJCQlicGZfbWFwX3VwZGF0ZV9lbGVtKCZ0ZXN0
YnVmX2hhc2gsIG5hbWUsICZ0LCBCUEZfRVhJU1QpOw0KKwkJfQ0KKwl9DQorDQorCXJldHVybiAw
Ow0KK30NCi0tIA0KMi40OS4wLjEwNDUuZzE3MDYxM2VmNDEtZ29vZw0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
