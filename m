Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA183AB3F68
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 19:41:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBAE8459DF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 17:41:55 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id CF78645A13
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 17:40:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=vLfGeMC5;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3qjIiaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3qjIiaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-30c1c4a8274so4522519a91.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 10:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747071659; x=1747676459; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xt8CAY1hcGS6Lny9EEFatzo77hxl+1XNQzM/j34oESs=;
        b=vLfGeMC5dbfWmnIpoD/EktPCY1lDgWQro1zl0B8s6CPc2tf0sRSW04z0ARzobxlX/C
         N4BA94u/xXvALMQc6Px4QfNW+b+g/ozqGsTcGloCoGdbvQU57jXgGItvRjP+AUIq+qPZ
         dgUEpxxbZxDTAHElhwVDIWf0DvPeN4QXjLj9irn+WBnSoFNFS+IxSfkS8YSgWGSYiORb
         0kV7YWpIF6gInNhDKEQ2GP98HWwQ0pWx6G+a0tZOPEUmpSnN+SUFT725o+JoaMFaS7f+
         SDFTIyLjxA2isOvy5gERRxDkO2UOogc9BnwRbRN5eVudYZlPY+yzMrYq5okLzjYa9K2z
         6SCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747071659; x=1747676459;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xt8CAY1hcGS6Lny9EEFatzo77hxl+1XNQzM/j34oESs=;
        b=fDSedX9QMMQWt5GPgPvNjuS1zuuUVMIpLjTMBqSmebSP7sL/C9gjTcxn4L8jvC76WM
         qQuBt/H+mXSI9O8C75pLqTBAZ65iRwWR3EKJRrfPR6P04fdsl1LZ9tF06gQTRrHLFLAx
         MiKaRL2yK21l9v0QhqUpR9CcI/JkrNWM45ioWqK+dmgSK4JHC+zrMYWtQl34QdCgGX95
         ofPd2wV5Kd8H/AjFN6QAyI1f1pVKpxB6G3PZ6fFwjdjng6xZpUoHLTEq9PClfKZEH7L7
         EW3rCyFpLqi27S+6v/CNHE9pm7Yl6dfl2ORf3pN6ZRn0svbs+zDQMnoKq2tvZzWkoKTW
         H9Eg==
X-Forwarded-Encrypted: i=1; AJvYcCWr1Sclj9VR8UoQ7UULWIIkhsF+XezRtZFAldbYormfYUuOvABcAAsEqV4QHFxCIWrrywK5CiaPlrraICms@lists.linaro.org
X-Gm-Message-State: AOJu0YyQofUY2L0T8rczfJrjMXN0mMdyVsB5skh9+EMM6lZqYUVDa3P+
	Z2OdmvZ/76tyascXSSsdGUdNpmeq2ZNsjq0+IPgHiSp1UNXnbqSz8Njoq6g5MPO1uUp/BdeyKRV
	Ql7v2yn/kwMBuzA==
X-Google-Smtp-Source: AGHT+IGSf3qT9YvheOr4I3XzP14hYOrPMaTHP/OGAQDR4qmiHA2sveVJ+nyVBauT4udhHi7fyZ4qbN95CQx57ik=
X-Received: from pjbsn16.prod.google.com ([2002:a17:90b:2e90:b0:2fa:15aa:4d2b])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:2413:b0:30c:5617:7475 with SMTP id 98e67ed59e1d1-30c5617928fmr14088307a91.18.1747071658988;
 Mon, 12 May 2025 10:40:58 -0700 (PDT)
Date: Mon, 12 May 2025 17:40:34 +0000
In-Reply-To: <20250512174036.266796-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250512174036.266796-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250512174036.266796-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CF78645A13
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3qjIiaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[mail-pj1-f74.google.com:helo,mail-pj1-f74.google.com:rdns,amd.com:email];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3qjIiaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: GZXJRONJQUJ3XGRGSLSJLHS7U2DJB2F4
X-Message-ID-Hash: GZXJRONJQUJ3XGRGSLSJLHS7U2DJB2F4
X-MailFrom: 3qjIiaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v5 3/5] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZXJRONJQUJ3XGRGSLSJLHS7U2DJB2F4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBvcGVuIGNvZGVkIGl0ZXJhdG9yIGFsbG93cyBmb3IgbW9yZSBmbGV4aWJpbGl0eSB3aGVu
IGNyZWF0aW5nIEJQRg0KcHJvZ3JhbXMuIEl0IGNhbiBzdXBwb3J0IG91dHB1dCBpbiBmb3JtYXRz
IG90aGVyIHRoYW4gdGV4dC4gV2l0aCBhbiBvcGVuDQpjb2RlZCBpdGVyYXRvciwgYSBzaW5nbGUg
QlBGIHByb2dyYW0gY2FuIHRyYXZlcnNlIG11bHRpcGxlIGtlcm5lbCBkYXRhDQpzdHJ1Y3R1cmVz
IChub3cgaW5jbHVkaW5nIGRtYWJ1ZnMpLCBhbGxvd2luZyBmb3IgbW9yZSBlZmZpY2llbnQgYW5h
bHlzaXMNCm9mIGtlcm5lbCBkYXRhIGNvbXBhcmVkIHRvIG11bHRpcGxlIHJlYWRzIGZyb20gcHJv
Y2ZzLCBzeXNmcywgb3INCm11bHRpcGxlIHRyYWRpdGlvbmFsIEJQRiBpdGVyYXRvciBpbnZvY2F0
aW9ucy4NCg0KU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNv
bT4NCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpBY2tlZC1ieTogU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4NCi0tLQ0KIGtlcm5lbC9icGYv
ZG1hYnVmX2l0ZXIuYyB8IDQ4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCiBrZXJuZWwvYnBmL2hlbHBlcnMuYyAgICAgfCAgNSArKysrKw0KIDIgZmlsZXMgY2hhbmdl
ZCwgNTMgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEva2VybmVsL2JwZi9kbWFidWZfaXRl
ci5jIGIva2VybmVsL2JwZi9kbWFidWZfaXRlci5jDQppbmRleCA4M2VmNTRkNzhiNjIuLjRkZDdl
ZjdjMTQ1YyAxMDA2NDQNCi0tLSBhL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0KKysrIGIva2Vy
bmVsL2JwZi9kbWFidWZfaXRlci5jDQpAQCAtMTAwLDMgKzEwMCw1MSBAQCBzdGF0aWMgaW50IF9f
aW5pdCBkbWFidWZfaXRlcl9pbml0KHZvaWQpDQogfQ0KIA0KIGxhdGVfaW5pdGNhbGwoZG1hYnVm
X2l0ZXJfaW5pdCk7DQorDQorc3RydWN0IGJwZl9pdGVyX2RtYWJ1ZiB7DQorCS8qDQorCSAqIG9w
YXF1ZSBpdGVyYXRvciBzdGF0ZTsgaGF2aW5nIF9fdTY0IGhlcmUgYWxsb3dzIHRvIHByZXNlcnZl
IGNvcnJlY3QNCisJICogYWxpZ25tZW50IHJlcXVpcmVtZW50cyBpbiB2bWxpbnV4LmgsIGdlbmVy
YXRlZCBmcm9tIEJURg0KKwkgKi8NCisJX191NjQgX19vcGFxdWVbMV07DQorfSBfX2FsaWduZWQo
OCk7DQorDQorLyogTm9uLW9wYXF1ZSB2ZXJzaW9uIG9mIGJwZl9pdGVyX2RtYWJ1ZiAqLw0KK3N0
cnVjdCBicGZfaXRlcl9kbWFidWZfa2VybiB7DQorCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQor
fSBfX2FsaWduZWQoOCk7DQorDQorX19icGZfa2Z1bmNfc3RhcnRfZGVmcygpOw0KKw0KK19fYnBm
X2tmdW5jIGludCBicGZfaXRlcl9kbWFidWZfbmV3KHN0cnVjdCBicGZfaXRlcl9kbWFidWYgKml0
KQ0KK3sNCisJc3RydWN0IGJwZl9pdGVyX2RtYWJ1Zl9rZXJuICpraXQgPSAodm9pZCAqKWl0Ow0K
Kw0KKwlCVUlMRF9CVUdfT04oc2l6ZW9mKCpraXQpID4gc2l6ZW9mKCppdCkpOw0KKwlCVUlMRF9C
VUdfT04oX19hbGlnbm9mX18oKmtpdCkgIT0gX19hbGlnbm9mX18oKml0KSk7DQorDQorCWtpdC0+
ZG1hYnVmID0gTlVMTDsNCisJcmV0dXJuIDA7DQorfQ0KKw0KK19fYnBmX2tmdW5jIHN0cnVjdCBk
bWFfYnVmICpicGZfaXRlcl9kbWFidWZfbmV4dChzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmICppdCkN
Cit7DQorCXN0cnVjdCBicGZfaXRlcl9kbWFidWZfa2VybiAqa2l0ID0gKHZvaWQgKilpdDsNCisN
CisJaWYgKGtpdC0+ZG1hYnVmKQ0KKwkJa2l0LT5kbWFidWYgPSBkbWFfYnVmX2l0ZXJfbmV4dChr
aXQtPmRtYWJ1Zik7DQorCWVsc2UNCisJCWtpdC0+ZG1hYnVmID0gZG1hX2J1Zl9pdGVyX2JlZ2lu
KCk7DQorDQorCXJldHVybiBraXQtPmRtYWJ1ZjsNCit9DQorDQorX19icGZfa2Z1bmMgdm9pZCBi
cGZfaXRlcl9kbWFidWZfZGVzdHJveShzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmICppdCkNCit7DQor
CXN0cnVjdCBicGZfaXRlcl9kbWFidWZfa2VybiAqa2l0ID0gKHZvaWQgKilpdDsNCisNCisJaWYg
KGtpdC0+ZG1hYnVmKQ0KKwkJZG1hX2J1Zl9wdXQoa2l0LT5kbWFidWYpOw0KK30NCisNCitfX2Jw
Zl9rZnVuY19lbmRfZGVmcygpOw0KZGlmZiAtLWdpdCBhL2tlcm5lbC9icGYvaGVscGVycy5jIGIv
a2VybmVsL2JwZi9oZWxwZXJzLmMNCmluZGV4IDc4Y2VmYjQxMjY2YS4uMzlmZTYzMDE2ODY4IDEw
MDY0NA0KLS0tIGEva2VybmVsL2JwZi9oZWxwZXJzLmMNCisrKyBiL2tlcm5lbC9icGYvaGVscGVy
cy5jDQpAQCAtMzM0Niw2ICszMzQ2LDExIEBAIEJURl9JRF9GTEFHUyhmdW5jLCBicGZfaXRlcl9r
bWVtX2NhY2hlX25leHQsIEtGX0lURVJfTkVYVCB8IEtGX1JFVF9OVUxMIHwgS0ZfU0xFDQogQlRG
X0lEX0ZMQUdTKGZ1bmMsIGJwZl9pdGVyX2ttZW1fY2FjaGVfZGVzdHJveSwgS0ZfSVRFUl9ERVNU
Uk9ZIHwgS0ZfU0xFRVBBQkxFKQ0KIEJURl9JRF9GTEFHUyhmdW5jLCBicGZfbG9jYWxfaXJxX3Nh
dmUpDQogQlRGX0lEX0ZMQUdTKGZ1bmMsIGJwZl9sb2NhbF9pcnFfcmVzdG9yZSkNCisjaWZkZWYg
Q09ORklHX0RNQV9TSEFSRURfQlVGRkVSDQorQlRGX0lEX0ZMQUdTKGZ1bmMsIGJwZl9pdGVyX2Rt
YWJ1Zl9uZXcsIEtGX0lURVJfTkVXIHwgS0ZfU0xFRVBBQkxFKQ0KK0JURl9JRF9GTEFHUyhmdW5j
LCBicGZfaXRlcl9kbWFidWZfbmV4dCwgS0ZfSVRFUl9ORVhUIHwgS0ZfUkVUX05VTEwgfCBLRl9T
TEVFUEFCTEUpDQorQlRGX0lEX0ZMQUdTKGZ1bmMsIGJwZl9pdGVyX2RtYWJ1Zl9kZXN0cm95LCBL
Rl9JVEVSX0RFU1RST1kgfCBLRl9TTEVFUEFCTEUpDQorI2VuZGlmDQogQlRGX0tGVU5DU19FTkQo
Y29tbW9uX2J0Zl9pZHMpDQogDQogc3RhdGljIGNvbnN0IHN0cnVjdCBidGZfa2Z1bmNfaWRfc2V0
IGNvbW1vbl9rZnVuY19zZXQgPSB7DQotLSANCjIuNDkuMC4xMDQ1LmcxNzA2MTNlZjQxLWdvb2cN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
