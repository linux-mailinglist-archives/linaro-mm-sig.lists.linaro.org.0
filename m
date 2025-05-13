Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C358DAB5A29
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 18:37:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E491E45973
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 16:37:52 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id A7E684596B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 16:36:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=R89FWPo1;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3B3UjaAkKDcY5vyq3ouq3s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3B3UjaAkKDcY5vyq3ouq3s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30ac9abbd4bso9110179a91.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 09:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747154184; x=1747758984; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2++fCRMe3L9pR8XKatZapTnZclNsk79jNMtd4ev4pGw=;
        b=R89FWPo1rQ0Tfwz19YQ5rbRtvA73V4Wqn1kOZKwtKCTqV5B0EhEp+P9MJCxoermwjR
         SNZtyaos7iFs5zcYdwu78TkOKTOMbQPYu0RwDoO34zPPALMp1cto57Fv8OpVyYYEljTI
         f6B73PHBHDniKz2k840gPaEgnbbXLYh/eGl8NXdp32+n7OwXmUYhVHJF/nK73Z5mA0ja
         ZbP9pyEGpKAir/IcX4ikqx1HO8mULzyk+ClVPy/qvq9tyEqd7Mo498SfmldUw8z8zlXF
         9r1gauFEBmK+mFYgxDDBWMB72LerRSTSDAlE9zR5IKtSxm5hB2tXwuKeaMKQaiMG1meh
         Y7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747154184; x=1747758984;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2++fCRMe3L9pR8XKatZapTnZclNsk79jNMtd4ev4pGw=;
        b=FGbFJFuk7h6BiTsiyVYDikRmzZ94QPxaCGaWhxNS5tMCa+WNddY446NFU96R+0ancb
         JJ5lj1K1/fzbadjMXbPnxV3wY32L9T7y2ZPeOrQV73iUnznpYj2HNC2BNjdbN39lsu5u
         LTZeDu1AOxZUV1Oere4A04Yo4KDJVXvZFBGD7afI5Pdox8K8KxcYpmJnzyLSiwptkb/V
         UxSiAkoqrKfH0q+yOjaXVgbHK/rtXNAoJ/2g+cGfNoOlzYJURQdW6aMghdKndjgXfpZQ
         Sc58c40Ruha/0E6ms8L5HORzJnjppSNiEzhVswVFEdL5NFyziAjbjlC0KWJB8Q3Timd9
         zTfw==
X-Forwarded-Encrypted: i=1; AJvYcCUyUHlvKv7+ObY9Cng5F0mTFM/Wl+iQIAHspWrkLJx7YGIkS0MicI6jCO4VqQTT4En1T8OXFP/b0UavRyYR@lists.linaro.org
X-Gm-Message-State: AOJu0Yxtw5UaYOJWMaJ5NTv9bfwOyfHvZhqSl1o6XNhnJYkTQKDjmM8K
	NfTrJisextYAATBfnTXEnz4VITRvHSkzIuUnvHhSbFDnCxvzLwut+qzJ76fi8ueda5SDLH/i7gS
	rZfcIfE81essknA==
X-Google-Smtp-Source: AGHT+IE+aqPOpgjO1590OZC7ONM9C4FChLY4A8vilD/mONkHhcOuA1B9Bfey4X0tmkv0XxFwbLvbokI1dDCWlME=
X-Received: from pjbqn8.prod.google.com ([2002:a17:90b:3d48:b0:2fb:fa85:1678])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:58cf:b0:30a:2173:9f0b with SMTP id 98e67ed59e1d1-30e2e629eb8mr327463a91.28.1747154183884;
 Tue, 13 May 2025 09:36:23 -0700 (PDT)
Date: Tue, 13 May 2025 16:36:01 +0000
In-Reply-To: <20250513163601.812317-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250513163601.812317-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250513163601.812317-6-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A7E684596B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3B3UjaAkKDcY5vyq3ouq3s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	URIBL_BLOCKED(0.00)[mail-pj1-f73.google.com:helo,mail-pj1-f73.google.com:rdns,amd.com:email];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3B3UjaAkKDcY5vyq3ouq3s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--tjmercier.bounces.google.com];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.73:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 6MMRM3X7XAXTX673CL33LJRZENTMP3SO
X-Message-ID-Hash: 6MMRM3X7XAXTX673CL33LJRZENTMP3SO
X-MailFrom: 3B3UjaAkKDcY5vyq3ouq3s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v6 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MMRM3X7XAXTX673CL33LJRZENTMP3SO/>
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
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQWNrZWQtYnk6IFNvbmcgTGl1IDxzb25n
QGtlcm5lbC5vcmc+DQotLS0NCiAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmlt
ZW50YWwuaCAgfCAgNSArKysNCiAuLi4vc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9p
dGVyLmMgICAgfCA0MSArKysrKysrKysrKysrKysrKysrDQogLi4uL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9ncy9kbWFidWZfaXRlci5jIHwgMzggKysrKysrKysrKysrKysrKysNCiAzIGZpbGVz
IGNoYW5nZWQsIDg0IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi9icGZfZXhwZXJpbWVudGFsLmggYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5oDQppbmRleCA2NTM1YzhhZTNjNDYuLjVlNTEyYTFkMDlk
MSAxMDA2NDQNCi0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfZXhwZXJpbWVu
dGFsLmgNCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfZXhwZXJpbWVudGFs
LmgNCkBAIC01OTEsNCArNTkxLDkgQEAgZXh0ZXJuIGludCBicGZfaXRlcl9rbWVtX2NhY2hlX25l
dyhzdHJ1Y3QgYnBmX2l0ZXJfa21lbV9jYWNoZSAqaXQpIF9fd2VhayBfX2tzeW0NCiBleHRlcm4g
c3RydWN0IGttZW1fY2FjaGUgKmJwZl9pdGVyX2ttZW1fY2FjaGVfbmV4dChzdHJ1Y3QgYnBmX2l0
ZXJfa21lbV9jYWNoZSAqaXQpIF9fd2VhayBfX2tzeW07DQogZXh0ZXJuIHZvaWQgYnBmX2l0ZXJf
a21lbV9jYWNoZV9kZXN0cm95KHN0cnVjdCBicGZfaXRlcl9rbWVtX2NhY2hlICppdCkgX193ZWFr
IF9fa3N5bTsNCiANCitzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmOw0KK2V4dGVybiBpbnQgYnBmX2l0
ZXJfZG1hYnVmX25ldyhzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmICppdCkgX193ZWFrIF9fa3N5bTsN
CitleHRlcm4gc3RydWN0IGRtYV9idWYgKmJwZl9pdGVyX2RtYWJ1Zl9uZXh0KHN0cnVjdCBicGZf
aXRlcl9kbWFidWYgKml0KSBfX3dlYWsgX19rc3ltOw0KK2V4dGVybiB2b2lkIGJwZl9pdGVyX2Rt
YWJ1Zl9kZXN0cm95KHN0cnVjdCBicGZfaXRlcl9kbWFidWYgKml0KSBfX3dlYWsgX19rc3ltOw0K
Kw0KICNlbmRpZg0KZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9n
X3Rlc3RzL2RtYWJ1Zl9pdGVyLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190
ZXN0cy9kbWFidWZfaXRlci5jDQppbmRleCBkYzc0MGJkMGUyYmQuLjZjMmIwYzNkYmNkOCAxMDA2
NDQNCi0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9p
dGVyLmMNCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1
Zl9pdGVyLmMNCkBAIC0yMTksMTQgKzIxOSw1MiBAQCBzdGF0aWMgdm9pZCBzdWJ0ZXN0X2RtYWJ1
Zl9pdGVyX2NoZWNrX2RlZmF1bHRfaXRlcihzdHJ1Y3QgZG1hYnVmX2l0ZXIgKnNrZWwpDQogCWNs
b3NlKGl0ZXJfZmQpOw0KIH0NCiANCitzdGF0aWMgdm9pZCBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2No
ZWNrX29wZW5fY29kZWQoc3RydWN0IGRtYWJ1Zl9pdGVyICpza2VsLCBpbnQgbWFwX2ZkKQ0KK3sN
CisJTElCQlBGX09QVFMoYnBmX3Rlc3RfcnVuX29wdHMsIHRvcHRzKTsNCisJY2hhciBrZXlbRE1B
X0JVRl9OQU1FX0xFTl07DQorCWludCBlcnIsIGZkOw0KKwlib29sIGZvdW5kOw0KKw0KKwkvKiBO
byBuZWVkIHRvIGF0dGFjaCBpdCwganVzdCBydW4gaXQgZGlyZWN0bHkgKi8NCisJZmQgPSBicGZf
cHJvZ3JhbV9fZmQoc2tlbC0+cHJvZ3MuaXRlcl9kbWFidWZfZm9yX2VhY2gpOw0KKw0KKwllcnIg
PSBicGZfcHJvZ190ZXN0X3J1bl9vcHRzKGZkLCAmdG9wdHMpOw0KKwlpZiAoIUFTU0VSVF9PSyhl
cnIsICJ0ZXN0X3J1bl9vcHRzIGVyciIpKQ0KKwkJcmV0dXJuOw0KKwlpZiAoIUFTU0VSVF9PSyh0
b3B0cy5yZXR2YWwsICJ0ZXN0X3J1bl9vcHRzIHJldHZhbCIpKQ0KKwkJcmV0dXJuOw0KKw0KKwlp
ZiAoIUFTU0VSVF9PSyhicGZfbWFwX2dldF9uZXh0X2tleShtYXBfZmQsIE5VTEwsIGtleSksICJn
ZXQgbmV4dCBrZXkiKSkNCisJCXJldHVybjsNCisNCisJZG8gew0KKwkJQVNTRVJUX09LKGJwZl9t
YXBfbG9va3VwX2VsZW0obWFwX2ZkLCBrZXksICZmb3VuZCksICJsb29rdXAiKTsNCisJCUFTU0VS
VF9UUlVFKGZvdW5kLCAiZm91bmQgdGVzdCBidWZmZXIiKTsNCisJfSB3aGlsZSAoYnBmX21hcF9n
ZXRfbmV4dF9rZXkobWFwX2ZkLCBrZXksIGtleSkpOw0KK30NCisNCiB2b2lkIHRlc3RfZG1hYnVm
X2l0ZXIodm9pZCkNCiB7DQogCXN0cnVjdCBkbWFidWZfaXRlciAqc2tlbCA9IE5VTEw7DQorCWlu
dCBtYXBfZmQ7DQorCWNvbnN0IGJvb2wgZiA9IGZhbHNlOw0KIA0KIAlza2VsID0gZG1hYnVmX2l0
ZXJfX29wZW5fYW5kX2xvYWQoKTsNCiAJaWYgKCFBU1NFUlRfT0tfUFRSKHNrZWwsICJkbWFidWZf
aXRlcl9fb3Blbl9hbmRfbG9hZCIpKQ0KIAkJcmV0dXJuOw0KIA0KKwltYXBfZmQgPSBicGZfbWFw
X19mZChza2VsLT5tYXBzLnRlc3RidWZfaGFzaCk7DQorCWlmICghQVNTRVJUX09LX0ZEKG1hcF9m
ZCwgIm1hcF9mZCIpKQ0KKwkJZ290byBkZXN0cm95X3NrZWw7DQorDQorCWlmICghQVNTRVJUX09L
KGJwZl9tYXBfdXBkYXRlX2VsZW0obWFwX2ZkLCB1ZG1hYnVmX3Rlc3RfYnVmZmVyX25hbWUsICZm
LCBCUEZfQU5ZKSwNCisJCSAgICAgICAiaW5zZXJ0IHVkbWFidWYiKSkNCisJCWdvdG8gZGVzdHJv
eV9za2VsOw0KKwlpZiAoIUFTU0VSVF9PSyhicGZfbWFwX3VwZGF0ZV9lbGVtKG1hcF9mZCwgc3lz
aGVhcF90ZXN0X2J1ZmZlcl9uYW1lLCAmZiwgQlBGX0FOWSksDQorCQkgICAgICAgImluc2VydCBz
eXNoZWFwIGJ1ZmZlciIpKQ0KKwkJZ290byBkZXN0cm95X3NrZWw7DQorDQogCWlmICghQVNTRVJU
X09LKGNyZWF0ZV90ZXN0X2J1ZmZlcnMoKSwgImNyZWF0ZV90ZXN0X2J1ZmZlcnMiKSkNCiAJCWdv
dG8gZGVzdHJveTsNCiANCkBAIC0yMzcsOCArMjc1LDExIEBAIHZvaWQgdGVzdF9kbWFidWZfaXRl
cih2b2lkKQ0KIAkJc3VidGVzdF9kbWFidWZfaXRlcl9jaGVja19ub19pbmZpbml0ZV9yZWFkcyhz
a2VsKTsNCiAJaWYgKHRlc3RfX3N0YXJ0X3N1YnRlc3QoImRlZmF1bHRfaXRlciIpKQ0KIAkJc3Vi
dGVzdF9kbWFidWZfaXRlcl9jaGVja19kZWZhdWx0X2l0ZXIoc2tlbCk7DQorCWlmICh0ZXN0X19z
dGFydF9zdWJ0ZXN0KCJvcGVuX2NvZGVkIikpDQorCQlzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNr
X29wZW5fY29kZWQoc2tlbCwgbWFwX2ZkKTsNCiANCiBkZXN0cm95Og0KIAlkZXN0cm95X3Rlc3Rf
YnVmZmVycygpOw0KK2Rlc3Ryb3lfc2tlbDoNCiAJZG1hYnVmX2l0ZXJfX2Rlc3Ryb3koc2tlbCk7
DQogfQ0KZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFi
dWZfaXRlci5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVy
LmMNCmluZGV4IDJhMWI1Mzk3MTk2ZC4uYmQ0ZWJmYzkxNjFjIDEwMDY0NA0KLS0tIGEvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMNCisrKyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5jDQpAQCAtOSw2ICs5LDEzIEBA
DQogDQogY2hhciBfbGljZW5zZVtdIFNFQygibGljZW5zZSIpID0gIkdQTCI7DQogDQorc3RydWN0
IHsNCisJX191aW50KHR5cGUsIEJQRl9NQVBfVFlQRV9IQVNIKTsNCisJX191aW50KGtleV9zaXpl
LCBETUFfQlVGX05BTUVfTEVOKTsNCisJX190eXBlKHZhbHVlLCBib29sKTsNCisJX191aW50KG1h
eF9lbnRyaWVzLCA1KTsNCit9IHRlc3RidWZfaGFzaCBTRUMoIi5tYXBzIik7DQorDQogLyoNCiAg
KiBGaWVsZHMgb3V0cHV0IGJ5IHRoaXMgaXRlcmF0b3IgYXJlIGRlbGltaXRlZCBieSBuZXdsaW5l
cy4gQ29udmVydCBhbnkNCiAgKiBuZXdsaW5lcyBpbiB1c2VyLXByb3ZpZGVkIHByaW50ZWQgc3Ry
aW5ncyB0byBzcGFjZXMuDQpAQCAtNTEsMyArNTgsMzQgQEAgaW50IGRtYWJ1Zl9jb2xsZWN0b3Io
c3RydWN0IGJwZl9pdGVyX19kbWFidWYgKmN0eCkNCiAJQlBGX1NFUV9QUklOVEYoc2VxLCAiJWx1
XG4lbGx1XG4lc1xuJXNcbiIsIGlub2RlLCBzaXplLCBuYW1lLCBleHBvcnRlcik7DQogCXJldHVy
biAwOw0KIH0NCisNCitTRUMoInN5c2NhbGwiKQ0KK2ludCBpdGVyX2RtYWJ1Zl9mb3JfZWFjaChj
b25zdCB2b2lkICpjdHgpDQorew0KKwlzdHJ1Y3QgZG1hX2J1ZiAqZDsNCisNCisJYnBmX2Zvcl9l
YWNoKGRtYWJ1ZiwgZCkgew0KKwkJY2hhciBuYW1lW0RNQV9CVUZfTkFNRV9MRU5dOw0KKwkJY29u
c3QgY2hhciAqcG5hbWU7DQorCQlib29sICpmb3VuZDsNCisNCisJCWlmIChicGZfY29yZV9yZWFk
KCZwbmFtZSwgc2l6ZW9mKHBuYW1lKSwgJmQtPm5hbWUpKQ0KKwkJCXJldHVybiAxOw0KKw0KKwkJ
LyogQnVmZmVycyBhcmUgbm90IHJlcXVpcmVkIHRvIGJlIG5hbWVkICovDQorCQlpZiAoIXBuYW1l
KQ0KKwkJCWNvbnRpbnVlOw0KKw0KKwkJaWYgKGJwZl9wcm9iZV9yZWFkX2tlcm5lbChuYW1lLCBz
aXplb2YobmFtZSksIHBuYW1lKSkNCisJCQlyZXR1cm4gMTsNCisNCisJCWZvdW5kID0gYnBmX21h
cF9sb29rdXBfZWxlbSgmdGVzdGJ1Zl9oYXNoLCBuYW1lKTsNCisJCWlmIChmb3VuZCkgew0KKwkJ
CWJvb2wgdCA9IHRydWU7DQorDQorCQkJYnBmX21hcF91cGRhdGVfZWxlbSgmdGVzdGJ1Zl9oYXNo
LCBuYW1lLCAmdCwgQlBGX0VYSVNUKTsNCisJCX0NCisJfQ0KKw0KKwlyZXR1cm4gMDsNCit9DQot
LSANCjIuNDkuMC4xMDQ1LmcxNzA2MTNlZjQxLWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
