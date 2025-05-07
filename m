Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F8AAAD1EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 02:11:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 234AA463DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 00:11:12 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id D0D8A449D7
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 00:10:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=OaYtUFwa;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3BaUaaAkKDQIvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3BaUaaAkKDQIvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30ab4d56096so76342a91.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 May 2025 17:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746576645; x=1747181445; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3AT/BLkjp9kSyaWDX07QeDnXSY64MOvBoRMn6GL7z2E=;
        b=OaYtUFwaSK0ciIYe341ZjBIl4fr9gNy/WvBsH5zU1jKJKbixmCSpMoP6/yW9h0OBqV
         yhOv5oY3AffmN23sSXyzKUhcrCx1N4iEgDlirjCRGc+nGoJU60JZkwB/lJNLaZI/mFYW
         fL94jHIRIhJCjoj1JmAtJ5LvtrZinJ3Ym6zUtIQ/WeJA3E5ET2Ocfkd+PEFjLtmeYUvr
         fqhoVq08KJwuZqtmuQ29/WWLqimFNEp+bqop3Xki2qdNiK0VIlNH9rB61kt9YzZ7sbZb
         AVI58Ur7zogLLeK40CiWDkaC1x/tU4QaWqteIgo7vPGIxwc0NC0bTxCmKVrOMRE9oLL8
         xKCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746576645; x=1747181445;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3AT/BLkjp9kSyaWDX07QeDnXSY64MOvBoRMn6GL7z2E=;
        b=fXbSS+K8r3Dy2jo8Ewq+sPvv0C8mNXNaYEV3ZhuA/9s4zYbuwF8ClcdJZYdzgi0F7D
         1rPmb2Xjgre9nltuiqIEtX/dLpcXDUwgFF0GlCYlTpFwW6Y7vTZuzsUvTBMsFW9SV9wr
         wo315JUsYxJFmASktOGSqhEhA7ONpaPSjo8Wr8X7NOTgFKSsP3ehj8sE784uC/6XtA7O
         yqcDnlFUuO9MgmHvjK/BuMOano/ZgYVgBFwiivt3BhiPOVmdC1mrKvS+qDcHxP0xF2yO
         EMIn+a7XD1r+6NhmNTxh7i8XuKpqimA1RItrnT1OrG17OPD3dhxei3plQn/PPTbBBR1w
         oExg==
X-Forwarded-Encrypted: i=1; AJvYcCXe7nvUnPa6Y+i9/NjuVmCdKUTAjziZTN5RIo2ypAb8OM4OGXEC3tRs+h5c6rTgVmI3P1h95oFkUv7+PMFT@lists.linaro.org
X-Gm-Message-State: AOJu0Yyq9UC4ks9RaIgBIEEBWoDzI56HK/M3kOLxpkAEQXzROdNOtOUv
	d906LdEgOli0uAPGf8N4Ti49uIFcQSQS32vALdF4XEjbtgvOml9MGySGEYQRv5Nby57vJm3PR4m
	/8+0t2tqTVNW7VQ==
X-Google-Smtp-Source: AGHT+IGjv/c2fzF3ZsIcOt5Mn1/YxqtlksyqIqxhrRJxhS2Uqg6AkhPc6dULFKkD5F2xqt9stbeixjUXT9WMVA0=
X-Received: from pji12.prod.google.com ([2002:a17:90b:3fcc:b0:2fc:c98:ea47])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90a:e7d1:b0:2fc:3264:3666 with SMTP id 98e67ed59e1d1-30aac29bfd7mr1774601a91.30.1746576645059;
 Tue, 06 May 2025 17:10:45 -0700 (PDT)
Date: Wed,  7 May 2025 00:10:32 +0000
In-Reply-To: <20250507001036.2278781-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250507001036.2278781-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250507001036.2278781-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, song@kernel.org
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D0D8A449D7
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3BaUaaAkKDQIvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DNSWL_BLOCKED(0.00)[209.85.216.73:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3BaUaaAkKDQIvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: O6DSKMECZN24ZXRUEI7YJ3ECD3FZ4KY3
X-Message-ID-Hash: O6DSKMECZN24ZXRUEI7YJ3ECD3FZ4KY3
X-MailFrom: 3BaUaaAkKDQIvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v3 1/5] dma-buf: Rename debugfs symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O6DSKMECZN24ZXRUEI7YJ3ECD3FZ4KY3/>
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
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
fCA0MCArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiBpbmNsdWRlL2xp
bnV4L2RtYS1idWYuaCAgIHwgIDIgLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KyksIDI3IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDViYWE4M2I4NTUxNS4uOGQx
NTE3ODRlMzAyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTM1LDM1ICszNSwyNSBAQA0KIA0KIHN0YXRp
YyBpbmxpbmUgaW50IGlzX2RtYV9idWZfZmlsZShzdHJ1Y3QgZmlsZSAqKTsNCiANCi0jaWYgSVNf
RU5BQkxFRChDT05GSUdfREVCVUdfRlMpDQotc3RhdGljIERFRklORV9NVVRFWChkZWJ1Z2ZzX2xp
c3RfbXV0ZXgpOw0KLXN0YXRpYyBMSVNUX0hFQUQoZGVidWdmc19saXN0KTsNCitzdGF0aWMgREVG
SU5FX01VVEVYKGRtYWJ1Zl9saXN0X211dGV4KTsNCitzdGF0aWMgTElTVF9IRUFEKGRtYWJ1Zl9s
aXN0KTsNCiANCi1zdGF0aWMgdm9pZCBfX2RtYV9idWZfZGVidWdmc19saXN0X2FkZChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmKQ0KK3N0YXRpYyB2b2lkIF9fZG1hX2J1Zl9saXN0X2FkZChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmKQ0KIHsNCi0JbXV0ZXhfbG9jaygmZGVidWdmc19saXN0X211dGV4KTsN
Ci0JbGlzdF9hZGQoJmRtYWJ1Zi0+bGlzdF9ub2RlLCAmZGVidWdmc19saXN0KTsNCi0JbXV0ZXhf
dW5sb2NrKCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KKwltdXRleF9sb2NrKCZkbWFidWZfbGlzdF9t
dXRleCk7DQorCWxpc3RfYWRkKCZkbWFidWYtPmxpc3Rfbm9kZSwgJmRtYWJ1Zl9saXN0KTsNCisJ
bXV0ZXhfdW5sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQogfQ0KIA0KLXN0YXRpYyB2b2lkIF9f
ZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfZGVsKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQorc3RhdGlj
IHZvaWQgX19kbWFfYnVmX2xpc3RfZGVsKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQogew0KIAlp
ZiAoIWRtYWJ1ZikNCiAJCXJldHVybjsNCiANCi0JbXV0ZXhfbG9jaygmZGVidWdmc19saXN0X211
dGV4KTsNCisJbXV0ZXhfbG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KIAlsaXN0X2RlbCgmZG1h
YnVmLT5saXN0X25vZGUpOw0KLQltdXRleF91bmxvY2soJmRlYnVnZnNfbGlzdF9tdXRleCk7DQor
CW11dGV4X3VubG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KIH0NCi0jZWxzZQ0KLXN0YXRpYyB2
b2lkIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfYWRkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQot
ew0KLX0NCi0NCi1zdGF0aWMgdm9pZCBfX2RtYV9idWZfZGVidWdmc19saXN0X2RlbChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmKQ0KLXsNCi19DQotI2VuZGlmDQogDQogc3RhdGljIGNoYXIgKmRtYWJ1
ZmZzX2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQgYnVmbGVu
KQ0KIHsNCkBAIC0xMTUsNyArMTA1LDcgQEAgc3RhdGljIGludCBkbWFfYnVmX2ZpbGVfcmVsZWFz
ZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkNCiAJaWYgKCFpc19kbWFf
YnVmX2ZpbGUoZmlsZSkpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCi0JX19kbWFfYnVmX2RlYnVn
ZnNfbGlzdF9kZWwoZmlsZS0+cHJpdmF0ZV9kYXRhKTsNCisJX19kbWFfYnVmX2xpc3RfZGVsKGZp
bGUtPnByaXZhdGVfZGF0YSk7DQogDQogCXJldHVybiAwOw0KIH0NCkBAIC02ODksNyArNjc5LDcg
QEAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4
cG9ydF9pbmZvICpleHBfaW5mbykNCiAJZmlsZS0+Zl9wYXRoLmRlbnRyeS0+ZF9mc2RhdGEgPSBk
bWFidWY7DQogCWRtYWJ1Zi0+ZmlsZSA9IGZpbGU7DQogDQotCV9fZG1hX2J1Zl9kZWJ1Z2ZzX2xp
c3RfYWRkKGRtYWJ1Zik7DQorCV9fZG1hX2J1Zl9saXN0X2FkZChkbWFidWYpOw0KIA0KIAlyZXR1
cm4gZG1hYnVmOw0KIA0KQEAgLTE2MzAsNyArMTYyMCw3IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9k
ZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQ0KIAlzaXplX3Qgc2l6
ZSA9IDA7DQogCWludCByZXQ7DQogDQotCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgm
ZGVidWdmc19saXN0X211dGV4KTsNCisJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZk
bWFidWZfbGlzdF9tdXRleCk7DQogDQogCWlmIChyZXQpDQogCQlyZXR1cm4gcmV0Ow0KQEAgLTE2
MzksNyArMTYyOSw3IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFf
ZmlsZSAqcywgdm9pZCAqdW51c2VkKQ0KIAlzZXFfcHJpbnRmKHMsICIlLThzXHQlLThzXHQlLThz
XHQlLThzXHRleHBfbmFtZVx0JS04c1x0bmFtZVxuIiwNCiAJCSAgICJzaXplIiwgImZsYWdzIiwg
Im1vZGUiLCAiY291bnQiLCAiaW5vIik7DQogDQotCWxpc3RfZm9yX2VhY2hfZW50cnkoYnVmX29i
aiwgJmRlYnVnZnNfbGlzdCwgbGlzdF9ub2RlKSB7DQorCWxpc3RfZm9yX2VhY2hfZW50cnkoYnVm
X29iaiwgJmRtYWJ1Zl9saXN0LCBsaXN0X25vZGUpIHsNCiANCiAJCXJldCA9IGRtYV9yZXN2X2xv
Y2tfaW50ZXJydXB0aWJsZShidWZfb2JqLT5yZXN2LCBOVUxMKTsNCiAJCWlmIChyZXQpDQpAQCAt
MTY3NiwxMSArMTY2NiwxMSBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qg
c2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCiANCiAJc2VxX3ByaW50ZihzLCAiXG5Ub3RhbCAl
ZCBvYmplY3RzLCAlenUgYnl0ZXNcbiIsIGNvdW50LCBzaXplKTsNCiANCi0JbXV0ZXhfdW5sb2Nr
KCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KKwltdXRleF91bmxvY2soJmRtYWJ1Zl9saXN0X211dGV4
KTsNCiAJcmV0dXJuIDA7DQogDQogZXJyb3JfdW5sb2NrOg0KLQltdXRleF91bmxvY2soJmRlYnVn
ZnNfbGlzdF9tdXRleCk7DQorCW11dGV4X3VubG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KIAly
ZXR1cm4gcmV0Ow0KIH0NCiANCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBi
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQppbmRleCAzNjIxNmQyOGQ4YmQuLjhmZjRhZGQ3MWY4
OCAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1idWYuaA0KQEAgLTM3MCwxMCArMzcwLDggQEAgc3RydWN0IGRtYV9idWYgew0KIAkg
Ki8NCiAJc3RydWN0IG1vZHVsZSAqb3duZXI7DQogDQotI2lmIElTX0VOQUJMRUQoQ09ORklHX0RF
QlVHX0ZTKQ0KIAkvKiogQGxpc3Rfbm9kZTogbm9kZSBmb3IgZG1hX2J1ZiBhY2NvdW50aW5nIGFu
ZCBkZWJ1Z2dpbmcuICovDQogCXN0cnVjdCBsaXN0X2hlYWQgbGlzdF9ub2RlOw0KLSNlbmRpZg0K
IA0KIAkvKiogQHByaXY6IGV4cG9ydGVyIHNwZWNpZmljIHByaXZhdGUgZGF0YSBmb3IgdGhpcyBi
dWZmZXIgb2JqZWN0LiAqLw0KIAl2b2lkICpwcml2Ow0KLS0gDQoyLjQ5LjAuMTA0NS5nMTcwNjEz
ZWY0MS1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
