Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EED5AB3F5F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 19:41:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BE28413D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 17:41:20 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id A01114591E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 17:40:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=OYrEzjsN;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3pTIiaAkKDdoPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3pTIiaAkKDdoPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30ac9abbd4bso7428373a91.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 10:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747071654; x=1747676454; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SCXgFCr4xFu2oZbXQwI8tdtBERd+L0LdxpvvyzEsoGU=;
        b=OYrEzjsNgVq8JTmnTx5A43p4JrQCwuVvXRTAP7N8nwZTvGrHl2kqZmNTqdKwbmOea+
         0Rrh+jDdUcuHnwn8RBUuo1ONOZwpa29k72k3jxZ5mBRga6BT6HBB0Hq0redWrrWHxZMM
         jYjpOpxdH7vsJSZI2Xi/JiyRYv1+nxMPMJ/hrtqL6yug+1PoRVx0ZGoPVDymHAS6nfFy
         x2d+xYXrcCo+3djNneIHygK3yvCXR+C0JPgkE+csCWPGqKYK/0ycGtnm8ysHlr22ReLB
         +7FQG+sLWkCE8TIFv3PltOy+NXBnfeGWUWALxEfB1MXxSXxCy5877qFYqcne06vShut2
         krbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747071654; x=1747676454;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SCXgFCr4xFu2oZbXQwI8tdtBERd+L0LdxpvvyzEsoGU=;
        b=HQajwU3FtY1I5x+Qzg8Q/7/2bjhGyl0wGg5rwwIeWbYW3Hik2eu/PuhtfDpO3T0sTN
         2s+bMO0dqaDHXFeEjMJI5kiL57pRV6fQ3HGNIO7K93qo2l8lnPrAUT622daM8b+bbYRg
         KxcrXySiaInZg4c3o6Keki5JTRv68T7XGbVwNyj8nT3Kehq0WhaAHSJgtAkEJeRDgNYO
         +nKJQyPKnj4SeLFogQwB4zVZSPiTOVj2NQdZ7eypBtNXYN/A5xmiv8yQ48+7gmgTCM9U
         qfU7WqrmcxbQeVGi3CQwD5JwlOdIUL5r9ESZVvQv9gDIqf58rYy0f6ostOdsgXvyUh/z
         82Zg==
X-Forwarded-Encrypted: i=1; AJvYcCW0Z7bje+fWtqGK32XqJ64pXlEyg/snPCLsZxV7Qv2KAVA56RUwu24rwt6qzVfe2+zojr2O1NtzUsvqrzxI@lists.linaro.org
X-Gm-Message-State: AOJu0YwlWSPTJcYrfP1QScjkuM543fo35PCz10oLVePQInZp1sWnQ2xq
	/DK46Hwru9Au1HnhCLG8g8Qci8Z2MoVMqe7NClzZJyYpEuNoAa9SClYfI8XvB4BMHuRQpbsTyQt
	gJTiNhJxzV+NUwA==
X-Google-Smtp-Source: AGHT+IF+K6tr0ALF03p76hnqtxjQG6z4jM2ZpShKDCGXLdx2mjPqO4XOd82ZqZJQpw8W2LdE/0X1xEUeMkQ1hsU=
X-Received: from pjbpm17.prod.google.com ([2002:a17:90b:3c51:b0:30a:a05c:6e7d])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:4c8e:b0:2fa:1851:a023 with SMTP id 98e67ed59e1d1-30c3d657026mr21415976a91.35.1747071653565;
 Mon, 12 May 2025 10:40:53 -0700 (PDT)
Date: Mon, 12 May 2025 17:40:32 +0000
In-Reply-To: <20250512174036.266796-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250512174036.266796-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250512174036.266796-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A01114591E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3pTIiaAkKDdoPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[mail-pj1-f73.google.com:helo,mail-pj1-f73.google.com:rdns,amd.com:email];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3pTIiaAkKDdoPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: US3DLMSLAWJYMKL3CY6W4JJSEUXDRRGQ
X-Message-ID-Hash: US3DLMSLAWJYMKL3CY6W4JJSEUXDRRGQ
X-MailFrom: 3pTIiaAkKDdoPFIAN8EANCKKCHA.8KIHEJ6NK-II-OECHEOPO.HEJ6NK.KNC@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v5 1/5] dma-buf: Rename debugfs symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/US3DLMSLAWJYMKL3CY6W4JJSEUXDRRGQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVuYW1lIHRoZSBkZWJ1Z2ZzIGxpc3QgYW5kIG11dGV4IHNvIGl0J3MgY2xlYXIgdGhleSBhcmUg
bm93IHVzYWJsZQ0Kd2l0aG91dCB0aGUgbmVlZCBmb3IgQ09ORklHX0RFQlVHX0ZTLiBUaGUgbGlz
dCB3aWxsIGFsd2F5cyBiZSBwb3B1bGF0ZWQNCnRvIHN1cHBvcnQgdGhlIGNyZWF0aW9uIG9mIGEg
QlBGIGl0ZXJhdG9yIGZvciBkbWFidWZzLg0KDQpTaWduZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXIg
PHRqbWVyY2llckBnb29nbGUuY29tPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkFja2VkLWJ5OiBTb25nIExpdSA8c29uZ0BrZXJuZWwu
b3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDQwICsrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAg
MiAtLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0p
DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYw0KaW5kZXggNWJhYTgzYjg1NTE1Li44ZDE1MTc4NGUzMDIgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQpAQCAtMzUsMzUgKzM1LDI1IEBADQogDQogc3RhdGljIGlubGluZSBpbnQgaXNfZG1h
X2J1Zl9maWxlKHN0cnVjdCBmaWxlICopOw0KIA0KLSNpZiBJU19FTkFCTEVEKENPTkZJR19ERUJV
R19GUykNCi1zdGF0aWMgREVGSU5FX01VVEVYKGRlYnVnZnNfbGlzdF9tdXRleCk7DQotc3RhdGlj
IExJU1RfSEVBRChkZWJ1Z2ZzX2xpc3QpOw0KK3N0YXRpYyBERUZJTkVfTVVURVgoZG1hYnVmX2xp
c3RfbXV0ZXgpOw0KK3N0YXRpYyBMSVNUX0hFQUQoZG1hYnVmX2xpc3QpOw0KIA0KLXN0YXRpYyB2
b2lkIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfYWRkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQor
c3RhdGljIHZvaWQgX19kbWFfYnVmX2xpc3RfYWRkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQog
ew0KLQltdXRleF9sb2NrKCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KLQlsaXN0X2FkZCgmZG1hYnVm
LT5saXN0X25vZGUsICZkZWJ1Z2ZzX2xpc3QpOw0KLQltdXRleF91bmxvY2soJmRlYnVnZnNfbGlz
dF9tdXRleCk7DQorCW11dGV4X2xvY2soJmRtYWJ1Zl9saXN0X211dGV4KTsNCisJbGlzdF9hZGQo
JmRtYWJ1Zi0+bGlzdF9ub2RlLCAmZG1hYnVmX2xpc3QpOw0KKwltdXRleF91bmxvY2soJmRtYWJ1
Zl9saXN0X211dGV4KTsNCiB9DQogDQotc3RhdGljIHZvaWQgX19kbWFfYnVmX2RlYnVnZnNfbGlz
dF9kZWwoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCitzdGF0aWMgdm9pZCBfX2RtYV9idWZfbGlz
dF9kZWwoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCiB7DQogCWlmICghZG1hYnVmKQ0KIAkJcmV0
dXJuOw0KIA0KLQltdXRleF9sb2NrKCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KKwltdXRleF9sb2Nr
KCZkbWFidWZfbGlzdF9tdXRleCk7DQogCWxpc3RfZGVsKCZkbWFidWYtPmxpc3Rfbm9kZSk7DQot
CW11dGV4X3VubG9jaygmZGVidWdmc19saXN0X211dGV4KTsNCisJbXV0ZXhfdW5sb2NrKCZkbWFi
dWZfbGlzdF9tdXRleCk7DQogfQ0KLSNlbHNlDQotc3RhdGljIHZvaWQgX19kbWFfYnVmX2RlYnVn
ZnNfbGlzdF9hZGQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCi17DQotfQ0KLQ0KLXN0YXRpYyB2
b2lkIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfZGVsKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQot
ew0KLX0NCi0jZW5kaWYNCiANCiBzdGF0aWMgY2hhciAqZG1hYnVmZnNfZG5hbWUoc3RydWN0IGRl
bnRyeSAqZGVudHJ5LCBjaGFyICpidWZmZXIsIGludCBidWZsZW4pDQogew0KQEAgLTExNSw3ICsx
MDUsNyBAQCBzdGF0aWMgaW50IGRtYV9idWZfZmlsZV9yZWxlYXNlKHN0cnVjdCBpbm9kZSAqaW5v
ZGUsIHN0cnVjdCBmaWxlICpmaWxlKQ0KIAlpZiAoIWlzX2RtYV9idWZfZmlsZShmaWxlKSkNCiAJ
CXJldHVybiAtRUlOVkFMOw0KIA0KLQlfX2RtYV9idWZfZGVidWdmc19saXN0X2RlbChmaWxlLT5w
cml2YXRlX2RhdGEpOw0KKwlfX2RtYV9idWZfbGlzdF9kZWwoZmlsZS0+cHJpdmF0ZV9kYXRhKTsN
CiANCiAJcmV0dXJuIDA7DQogfQ0KQEAgLTY4OSw3ICs2NzksNyBAQCBzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZv
KQ0KIAlmaWxlLT5mX3BhdGguZGVudHJ5LT5kX2ZzZGF0YSA9IGRtYWJ1ZjsNCiAJZG1hYnVmLT5m
aWxlID0gZmlsZTsNCiANCi0JX19kbWFfYnVmX2RlYnVnZnNfbGlzdF9hZGQoZG1hYnVmKTsNCisJ
X19kbWFfYnVmX2xpc3RfYWRkKGRtYWJ1Zik7DQogDQogCXJldHVybiBkbWFidWY7DQogDQpAQCAt
MTYzMCw3ICsxNjIwLDcgQEAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNl
cV9maWxlICpzLCB2b2lkICp1bnVzZWQpDQogCXNpemVfdCBzaXplID0gMDsNCiAJaW50IHJldDsN
CiANCi0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgp
Ow0KKwlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmRtYWJ1Zl9saXN0X211dGV4KTsN
CiANCiAJaWYgKHJldCkNCiAJCXJldHVybiByZXQ7DQpAQCAtMTYzOSw3ICsxNjI5LDcgQEAgc3Rh
dGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVz
ZWQpDQogCXNlcV9wcmludGYocywgIiUtOHNcdCUtOHNcdCUtOHNcdCUtOHNcdGV4cF9uYW1lXHQl
LThzXHRuYW1lXG4iLA0KIAkJICAgInNpemUiLCAiZmxhZ3MiLCAibW9kZSIsICJjb3VudCIsICJp
bm8iKTsNCiANCi0JbGlzdF9mb3JfZWFjaF9lbnRyeShidWZfb2JqLCAmZGVidWdmc19saXN0LCBs
aXN0X25vZGUpIHsNCisJbGlzdF9mb3JfZWFjaF9lbnRyeShidWZfb2JqLCAmZG1hYnVmX2xpc3Qs
IGxpc3Rfbm9kZSkgew0KIA0KIAkJcmV0ID0gZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKGJ1
Zl9vYmotPnJlc3YsIE5VTEwpOw0KIAkJaWYgKHJldCkNCkBAIC0xNjc2LDExICsxNjY2LDExIEBA
IHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAq
dW51c2VkKQ0KIA0KIAlzZXFfcHJpbnRmKHMsICJcblRvdGFsICVkIG9iamVjdHMsICV6dSBieXRl
c1xuIiwgY291bnQsIHNpemUpOw0KIA0KLQltdXRleF91bmxvY2soJmRlYnVnZnNfbGlzdF9tdXRl
eCk7DQorCW11dGV4X3VubG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KIAlyZXR1cm4gMDsNCiAN
CiBlcnJvcl91bmxvY2s6DQotCW11dGV4X3VubG9jaygmZGVidWdmc19saXN0X211dGV4KTsNCisJ
bXV0ZXhfdW5sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQogCXJldHVybiByZXQ7DQogfQ0KIA0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmgNCmluZGV4IDM2MjE2ZDI4ZDhiZC4uOGZmNGFkZDcxZjg4IDEwMDY0NA0KLS0tIGEvaW5j
bHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQpAQCAt
MzcwLDEwICszNzAsOCBAQCBzdHJ1Y3QgZG1hX2J1ZiB7DQogCSAqLw0KIAlzdHJ1Y3QgbW9kdWxl
ICpvd25lcjsNCiANCi0jaWYgSVNfRU5BQkxFRChDT05GSUdfREVCVUdfRlMpDQogCS8qKiBAbGlz
dF9ub2RlOiBub2RlIGZvciBkbWFfYnVmIGFjY291bnRpbmcgYW5kIGRlYnVnZ2luZy4gKi8NCiAJ
c3RydWN0IGxpc3RfaGVhZCBsaXN0X25vZGU7DQotI2VuZGlmDQogDQogCS8qKiBAcHJpdjogZXhw
b3J0ZXIgc3BlY2lmaWMgcHJpdmF0ZSBkYXRhIGZvciB0aGlzIGJ1ZmZlciBvYmplY3QuICovDQog
CXZvaWQgKnByaXY7DQotLSANCjIuNDkuMC4xMDQ1LmcxNzA2MTNlZjQxLWdvb2cNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
