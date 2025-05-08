Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E46AB0287
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 20:21:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C986044A67
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 18:21:05 +0000 (UTC)
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	by lists.linaro.org (Postfix) with ESMTPS id 04B8C45825
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 18:20:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ItZPPDb2;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3-_UcaAkKDaIVLOGTEKGTIQQING.EQONKPCTQ-OO-UKINKUVU.NKPCTQ.QTI@flex--tjmercier.bounces.google.com designates 209.85.214.201 as permitted sender) smtp.mailfrom=3-_UcaAkKDaIVLOGTEKGTIQQING.EQONKPCTQ-OO-UKINKUVU.NKPCTQ.QTI@flex--tjmercier.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-22fc829046fso1818185ad.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 May 2025 11:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746728443; x=1747333243; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Vp8YXWr6Q9MhLUnJJwXEStdYmj5bU/GPVl/VBDwV4c=;
        b=ItZPPDb2ISLvgCNp060qv3MI4Vi9QTwsQre2hZFEetfrGUAdLXx95CtyaMBdoIQenq
         Jx+qMREEN7yYp2Wc2vhK888dRqqAWbKLvpYB2PEt7zQr7SvCCm4rDWD/+zrBfeYH6R/u
         4kRXj4PMyfYaRk0fW5ym7VlMm30ZlZIFzQ5DXhHc7TCwYJCDzpZspzQtjyohtgcMulvp
         F47Gr7KtAWGp7gS7OCNLSHy365wX0L4+Iv4QjSWrWBfsuxMWHfasIaAAG0Ke+AAekt9G
         FKtFlXc2JtfDiqVyntHMYPE/lSI6Hvx9Z81cONbZlMMJzFnmidh3Is4rCbVE9hSt8yfY
         03kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746728443; x=1747333243;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6Vp8YXWr6Q9MhLUnJJwXEStdYmj5bU/GPVl/VBDwV4c=;
        b=Drt61K9ydAZ3SO17X9ngejJiy7qwQKeUTyzVBxfRIvaO4LIS9Ay3K28Wd0USW0Zlmo
         NNKb+KLrFVTAyy0JW1PnZ6U8wc5uo8Qb/QcXVoau+1wsdUAwiDD7HhE4ABP8WTrtCCJ8
         VmnBRoNdtwowAev+clDK+tyUku+x+MqVKdU7veJGie0IMvBWM0YpFfaoEjY5Nebw1cSg
         gBThTbFMR4ogUgAN2dPVlYW5EbCDdnEtkCZH2XABHlb7cIaSjawKeYhLEDFeiQrCrV0j
         cmERzdEKo++OqxSEsZUjhN3BsORKvGd7oQ58SzWgkpc7rSDNhxPNJQ/G6K9fYqQkvd+R
         RWvw==
X-Forwarded-Encrypted: i=1; AJvYcCWTmfVXo+T2iOPraDrnykGUCpFmqI7LQOA/6BmelvGeYyvh/rjVBVQpKinLB4HM9m6AWPGq+Ro3TzAw9BEH@lists.linaro.org
X-Gm-Message-State: AOJu0YyQpUT7SDhOTjLatK3RG1PKwwTlb5RXkiGO+mDTISz/tO/WadLb
	EhnqCcHZvz6Ylga215QBkm6M847dx2PED5ejjSTeoKEgCtVtypSkYAu5k2HDjoUYObF9VC5Ulnl
	ClHcVPRv8WPsfCw==
X-Google-Smtp-Source: AGHT+IGWYpqMym7eTmx2XCcVX3iEosdKCY4ug6FsGOVqYVYRZsv5uVL6cLxdaconQp+47Y7Cu3p54R4CvDNBpvM=
X-Received: from plkh7.prod.google.com ([2002:a17:903:19e7:b0:220:efca:379c])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:d48a:b0:220:ca39:d453 with SMTP id d9443c01a7336-22fc8b6131amr5261665ad.17.1746728443187;
 Thu, 08 May 2025 11:20:43 -0700 (PDT)
Date: Thu,  8 May 2025 18:20:20 +0000
In-Reply-To: <20250508182025.2961555-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1015.ga840276032-goog
Message-ID: <20250508182025.2961555-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 04B8C45825
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3-_UcaAkKDaIVLOGTEKGTIQQING.EQONKPCTQ-OO-UKINKUVU.NKPCTQ.QTI@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.201:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3-_UcaAkKDaIVLOGTEKGTIQQING.EQONKPCTQ-OO-UKINKUVU.NKPCTQ.QTI@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: DOWHCLNOAPXZSAL4GBBMGFXO75ZGVSLA
X-Message-ID-Hash: DOWHCLNOAPXZSAL4GBBMGFXO75ZGVSLA
X-MailFrom: 3-_UcaAkKDaIVLOGTEKGTIQQING.EQONKPCTQ-OO-UKINKUVU.NKPCTQ.QTI@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v4 1/5] dma-buf: Rename debugfs symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DOWHCLNOAPXZSAL4GBBMGFXO75ZGVSLA/>
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
dWZmZXIgb2JqZWN0LiAqLw0KIAl2b2lkICpwcml2Ow0KLS0gDQoyLjQ5LjAuMTAxNS5nYTg0MDI3
NjAzMi1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
