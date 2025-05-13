Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEFFAB5A23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 18:37:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E5FA45965
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 16:37:19 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 44E9C45966
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 16:36:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Zd8OgMGc;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3BHUjaAkKDcM2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3BHUjaAkKDcM2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30c371c34e7so5032137a91.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 09:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747154180; x=1747758980; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xt8CAY1hcGS6Lny9EEFatzo77hxl+1XNQzM/j34oESs=;
        b=Zd8OgMGcHI4H5MwHnpzbn7klM6RiU4Syly1XDjQ0rmBl86cVH8UnV+RXfEKBsYEm5C
         5YSREbK2LP08QmifrHvLAuDz9sm38aUd+hhGNSY15yJWx4fnYY+EnmE6I9m5c30lcjkH
         OxZyoZ8TxAsm5vLe4y3L2ZVHDdcQJ9qTln9Ms62/ubIdJqv92gnro5DxKZNi4ZwLfplc
         nMS7DZz9oc+N6zbqnqIjfCmKiVFqis4YA5VcYio1dD9TYXxdjrDRItsTX2uSR5DPxNOU
         r9nA5HrTKQYQ508xNThfcv8QX308PTgiE6LaeXUUzOh4hyJ4QxYe4BGnQszhBj4qtdYL
         03YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747154180; x=1747758980;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xt8CAY1hcGS6Lny9EEFatzo77hxl+1XNQzM/j34oESs=;
        b=cIt+RUeNzy08M0Aqhns0oI9BTymgyxj7xfJXmxbvWewkgi6oxD5MIQ15rowKh2j0po
         b0nBtFT7+IbjOo4NfnMctb7n7OUSb1TDJeaiLOtkGBSRpjyRqWWLYTrPYA5Ow7WHHox2
         VUAIJSVereuz9vBTqne1EhmmXYNcuOiCWmYWXvVDcmdV13kCbo3CbKGBDuesWXNLwA0C
         lWmHyR7edZNpKOdbdbOd/vZIw7NlyTQkAwbcw823/+YA5Uavdxg7/He0jkP+98htGaV3
         y8U2MQeSvjnjDDkY3zJw12fO7inEe+ztk3Oz6UJY+9LLCt3/Qt+SQ+CwqaF6huONT/km
         YWPg==
X-Forwarded-Encrypted: i=1; AJvYcCWJHtznVAPnhMKX5CIwI2fUSKm/2/hVa1a62VI6v8hmM0Kea5zLdjJNK6bQW41sUzbXfko/slyRbGraLfXs@lists.linaro.org
X-Gm-Message-State: AOJu0YzfjnJkoozsiSUVBU0jYEPZMGXHhGo+/kESgdpKcPiXWyHdBOTl
	WaZOfYt99EHLF1EBxgKtccDHD8mYAbmXd0OOwCTXCixuNxFS1hfYGEYMKlJ6mmyREizOk021xwR
	emxp80SEsZ0S7Kw==
X-Google-Smtp-Source: AGHT+IGNBh3t4ciLN6BTi9rDoJf0eB2VzLVSDG8EDfVIskybqOSTvm6Sm7/M8V1wG/5e//CdmDmAFqSBHvaalCQ=
X-Received: from pjbsj5.prod.google.com ([2002:a17:90b:2d85:b0:2f4:465d:5c61])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:288b:b0:2ee:f440:53ed with SMTP id 98e67ed59e1d1-30e2e639b4cmr297905a91.31.1747154180487;
 Tue, 13 May 2025 09:36:20 -0700 (PDT)
Date: Tue, 13 May 2025 16:35:59 +0000
In-Reply-To: <20250513163601.812317-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250513163601.812317-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250513163601.812317-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 44E9C45966
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3BHUjaAkKDcM2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com];
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
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3BHUjaAkKDcM2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.73:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: XHNARQTR7BCJZ2Q6KKYZIKOD7FJFWEDH
X-Message-ID-Hash: XHNARQTR7BCJZ2Q6KKYZIKOD7FJFWEDH
X-MailFrom: 3BHUjaAkKDcM2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v6 3/5] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XHNARQTR7BCJZ2Q6KKYZIKOD7FJFWEDH/>
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
