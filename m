Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC890AC1734
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 May 2025 01:05:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED508446ED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 23:05:37 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id 1A8AE44398
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 23:04:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=zdOHVt1T;
	spf=pass (lists.linaro.org: domain of 3jK0vaAkKDe0iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3jK0vaAkKDe0iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-30e8aec4689so7697356a91.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 16:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747955084; x=1748559884; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G/g8JyMw2VwyJ/m9TjS/SiUKpJwsf5OkBbH7oNpMPS0=;
        b=zdOHVt1TvvzOOBmJZoWn3OBj+ldigv4VpYc2MFIoAhtDqjpOtvEgwjuH+VU3IfkO2h
         qzOPG+dJaPcJq3UkadSCKgt9XHpB0MeUUyb3Zru9c8/qw+p1t2Wq+UjVGirgBWZVfeKM
         qrDPc4fL/KSHDyF9B+oU4FjBIAFQB/KhqbuJTSJ9Kb31b/eify6eQhBze1PU53L0eHuF
         pMY6nCbkXnXta53oio/TdtW/vFGrWUaGJ6gTOi0Vy1DjOvpHOPfUJKpZTQzwu9ErMd7I
         xfWBnqXcJdPTpywkGtao6PKiYW5PdirQskS4bso9aHfq9BbgI1z4NZrwP53az9FdSjBS
         aOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747955084; x=1748559884;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G/g8JyMw2VwyJ/m9TjS/SiUKpJwsf5OkBbH7oNpMPS0=;
        b=gQiXBRrUvrf265/4dFQ3rF8VnMaQ7TgKaew6FwJ9ingO9g/p/4kXmeWMdjb4VyZLSk
         qYU2xvP3MxVsfhX2z7d0R5dJVhjEfkfaj7N7W84OCXlkwQOTtTDa6dvyqCwkMADUJNw4
         mNU45MaqxgltwBAALYJbe9V1JokD9Agks/N5wkUXZ2nu2Yvy18y09i6pVfMLlFQdm0Jn
         1vEQvBPV+jOirAfLb+hc3I4gXzHYi2Fj9yOgSZhv21qcyphIHE+XzmitqPnLkpZe85HI
         tdcs+rsf15qSA2bu4Z42fOnp0OQEk4ZFoDoWYDM0cU7OK4HQRplfAP80r3VbLBDKPnHY
         CGEg==
X-Forwarded-Encrypted: i=1; AJvYcCUZBT8OWi45uNSyT6Q7+tZoKbgaMyGZZFgdqYAj4rfiAgiCQSxDS+L4lHncGLm0RWvkrRaUkfsZ42c7qjtF@lists.linaro.org
X-Gm-Message-State: AOJu0YyTrvtPM4ZdYQeiig04PfBpW9sOm4iIXJIa3VMuCghLKbrcyScZ
	1Kp/RB4ToxvxqXPT9T/Xm/2u+5MW6JFIoMRebjOXlS6SyGJ0nQ5K2/muF6INpqlsAfpdk7B1VDv
	2GiVQfdAzdNzi5KDf8g==
X-Google-Smtp-Source: AGHT+IFHuZm2aKEEnirqMLyqXI/q0B8Co6Lr8MSquOHmj/BaEI70fa0f5cgugQZD5uKAyXECH9AT3FapY42Phlk=
X-Received: from pjf6.prod.google.com ([2002:a17:90b:3f06:b0:2ea:9d23:79a0])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:3905:b0:30e:9349:2d93 with SMTP id 98e67ed59e1d1-310e972b4famr1252004a91.28.1747955084272;
 Thu, 22 May 2025 16:04:44 -0700 (PDT)
Date: Thu, 22 May 2025 23:04:27 +0000
In-Reply-To: <20250522230429.941193-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250522230429.941193-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1151.ga128411c76-goog
Message-ID: <20250522230429.941193-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3jK0vaAkKDe0iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3jK0vaAkKDe0iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.74:from]
X-Rspamd-Queue-Id: 1A8AE44398
X-Spamd-Bar: ----
Message-ID-Hash: FNPC5GP2YOGYXICIPS2BPACW22TNS55N
X-Message-ID-Hash: FNPC5GP2YOGYXICIPS2BPACW22TNS55N
X-MailFrom: 3jK0vaAkKDe0iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v7 3/5] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FNPC5GP2YOGYXICIPS2BPACW22TNS55N/>
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
a2VybmVsL2JwZi9oZWxwZXJzLmMNCmluZGV4IGMxMTEzYjc0ZTFlMi4uYmQxN2VkNWJmYzRiIDEw
MDY0NA0KLS0tIGEva2VybmVsL2JwZi9oZWxwZXJzLmMNCisrKyBiL2tlcm5lbC9icGYvaGVscGVy
cy5jDQpAQCAtMzM4Niw2ICszMzg2LDExIEBAIEJURl9JRF9GTEFHUyhmdW5jLCBicGZfY29weV9m
cm9tX3VzZXJfZHlucHRyLCBLRl9TTEVFUEFCTEUpDQogQlRGX0lEX0ZMQUdTKGZ1bmMsIGJwZl9j
b3B5X2Zyb21fdXNlcl9zdHJfZHlucHRyLCBLRl9TTEVFUEFCTEUpDQogQlRGX0lEX0ZMQUdTKGZ1
bmMsIGJwZl9jb3B5X2Zyb21fdXNlcl90YXNrX2R5bnB0ciwgS0ZfU0xFRVBBQkxFIHwgS0ZfVFJV
U1RFRF9BUkdTKQ0KIEJURl9JRF9GTEFHUyhmdW5jLCBicGZfY29weV9mcm9tX3VzZXJfdGFza19z
dHJfZHlucHRyLCBLRl9TTEVFUEFCTEUgfCBLRl9UUlVTVEVEX0FSR1MpDQorI2lmZGVmIENPTkZJ
R19ETUFfU0hBUkVEX0JVRkZFUg0KK0JURl9JRF9GTEFHUyhmdW5jLCBicGZfaXRlcl9kbWFidWZf
bmV3LCBLRl9JVEVSX05FVyB8IEtGX1NMRUVQQUJMRSkNCitCVEZfSURfRkxBR1MoZnVuYywgYnBm
X2l0ZXJfZG1hYnVmX25leHQsIEtGX0lURVJfTkVYVCB8IEtGX1JFVF9OVUxMIHwgS0ZfU0xFRVBB
QkxFKQ0KK0JURl9JRF9GTEFHUyhmdW5jLCBicGZfaXRlcl9kbWFidWZfZGVzdHJveSwgS0ZfSVRF
Ul9ERVNUUk9ZIHwgS0ZfU0xFRVBBQkxFKQ0KKyNlbmRpZg0KIEJURl9LRlVOQ1NfRU5EKGNvbW1v
bl9idGZfaWRzKQ0KIA0KIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYnRmX2tmdW5jX2lkX3NldCBjb21t
b25fa2Z1bmNfc2V0ID0gew0KLS0gDQoyLjQ5LjAuMTE1MS5nYTEyODQxMWM3Ni1nb29nDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
