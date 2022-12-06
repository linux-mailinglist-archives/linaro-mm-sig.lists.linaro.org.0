Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF3A6447B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 16:12:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF9533EF1F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 15:12:20 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id D26E93ED8F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Dec 2022 15:12:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=nbt1uvHT;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id qk9so6973847ejc.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Dec 2022 07:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DAwwuZGcB6zPCMej99H4ZxGfukIlcThhrdeWSERYxiU=;
        b=nbt1uvHTXIFHa7SZJIzUQqcm7GgHqGmS80M0TidVWzt162So6KKDGy6gM8fGhAx80E
         MRjsekWXmOw/ZO7ck+3ZUAdsDY9riYk5Lq8ysmttr3Mge1eIZPbsFwsI/Nm3B3lTjK66
         xyw4COH8c1Nkwz1+DSKwU2hx+o/rRiUuaglMl6dxI9bdKs9d6GzrbA+c+CQQgOHQpYV4
         4hnHGe9q5uETO0ydd4AVM7CT8jeO0eemcqb/dmCIZZGo60O8rQ1Cz/RBKG3W8NPpBlzl
         o23fm04xFwOWI1IpWqV34oinZ3JXYKjp4Z0LJjqpq1F4oyQYw/9CkmGEDYlUSJAqdtng
         3ybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DAwwuZGcB6zPCMej99H4ZxGfukIlcThhrdeWSERYxiU=;
        b=yzJloVzybs/Y+gVLrIJcJPgW9fLUShdCY5ntyfhlYIA9zdeT6b/BCy+tqkp5k4Z5GN
         qogknWQJfhpwMMaD1L3ZtQx11tBYVIIsV3nzYKFh9nKUS6qiPYcR/jmO3QLTzUYlwAHV
         WLVvWCvtLb4MqR4jDAO4qSlVZDPlSAyMCa4v3cuUao1a1xBVU59mhjrlcaGlkhSG1Xyo
         lqE93pJsuSxBIebwijVuGrWvbzxEPuD0kcqLMTv1gA20aZ7eRo2D4zsYGBsmBPXpkqSB
         Z+VyHDddpm+nzH2TbwVbu4tw2ZAK2xK/jdf/veq6XscW6ij+i8UNjAkVO6ueiliLNVCa
         TF/g==
X-Gm-Message-State: ANoB5plphh9XB4CUWXqIp0AHrfrvq0OUvkbAl4BUD0+mcumq+p9R3/xi
	pRbuNDik8rgoH1Emn1VRypY=
X-Google-Smtp-Source: AA0mqf7auaCY/9FYt7tioLSNUV49Je74hCB77cWcy1VArJ0c6nMh54u0yP1lGJoaL7fdF4h+tIhmFQ==
X-Received: by 2002:a17:906:ee1:b0:78a:efde:b84a with SMTP id x1-20020a1709060ee100b0078aefdeb84amr73368452eji.744.1670339530694;
        Tue, 06 Dec 2022 07:12:10 -0800 (PST)
Received: from able.fritz.box (p5b0ea229.dip0.t-ipconnect.de. [91.14.162.41])
        by smtp.gmail.com with ESMTPSA id j9-20020aa7c409000000b0046c53c3b2dfsm1096655edq.38.2022.12.06.07.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 07:12:09 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: quic_charante@quicinc.com,
	cuigaosheng1@huawei.com,
	tjmercier@google.com,
	sumit.semwal@linaro.org
Date: Tue,  6 Dec 2022 16:12:07 +0100
Message-Id: <20221206151207.8801-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Queue-Id: D26E93ED8F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.54 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	URIBL_BLOCKED(0.00)[amd.com:email];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.41:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail-ej1-f41.google.com:rdns,mail-ej1-f41.google.com:helo];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.189]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5XFDFYNJNLSP2XAYPLBXLDKJLKFMOSRE
X-Message-ID-Hash: 5XFDFYNJNLSP2XAYPLBXLDKJLKFMOSRE
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix dma_buf_export init order
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5XFDFYNJNLSP2XAYPLBXLDKJLKFMOSRE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGluaXQgb3JkZXIgYW5kIHJlc3VsdGluZyBlcnJvciBoYW5kbGluZyBpbiBkbWFfYnVmX2V4
cG9ydA0Kd2FzIHByZXR0eSBtZXNzeS4NCg0KU3Vib3JkaW5hdGUgb2JqZWN0cyBsaWtlIHRoZSBm
aWxlIGFuZCB0aGUgc3lzZnMga2VybmVsIG9iamVjdHMNCndlcmUgaW5pdGlhbGl6aW5nIGFuZCB3
aXJpbmcgaXRzZWxmIHVwIHdpdGggdGhlIG9iamVjdCBpbiB0aGUNCndyb25nIG9yZGVyIHJlc3Vs
dGluZyBub3Qgb25seSBpbiBjb21wbGljYXRpbmcgYW5kIHBhcnRpYWxseQ0KaW5jb3JyZWN0IGVy
cm9yIGhhbmRsaW5nLCBidXQgYWxzbyBpbiBwdWJsaXNoaW5nIG9ubHkgaGFsdmUNCmluaXRpYWxp
emVkIERNQS1idWYgb2JqZWN0cy4NCg0KQ2xlYW4gdGhpcyB1cCB0aG91Z2h0ZnVsbHkgYnkgYWxs
b2NhdGluZyB0aGUgZmlsZSBpbmRlcGVuZGVudA0Kb2YgdGhlIERNQS1idWYgb2JqZWN0LiBUaGVu
IGFsbG9jYXRlIGFuZCBpbml0aWFsaXplIHRoZSBETUEtYnVmDQpvYmplY3QgaXRzZWxmLCBiZWZv
cmUgcHVibGlzaGluZyBpdCB0aHJvdWdoIHN5c2ZzLiBJZiBldmVyeXRoaW5nDQp3b3JrcyBhcyBl
eHBlY3RlZCB0aGUgZmlsZSBpcyB0aGVuIGNvbm5lY3RlZCB3aXRoIHRoZSBETUEtYnVmDQpvYmpl
Y3QgYW5kIHB1Ymxpc2ggaXQgdGhyb3VnaCBkZWJ1Z2ZzLg0KDQpBbHNvIGFkZHMgdGhlIG1pc3Np
bmcgZG1hX3Jlc3ZfZmluaSgpIGludG8gdGhlIGVycm9yIGhhbmRsaW5nLg0KDQpTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBk
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jIHwgIDcgKy0tDQogZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuaCB8ICA0ICstDQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyAgICAgICAgICAgICB8IDY1ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQ0KIDMg
ZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pDQoNCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuYw0KaW5kZXggMmJiYTBiYWJjYjYyLi40YjY4MGUx
MGMxNWEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5j
DQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQpAQCAtMTY4LDE0
ICsxNjgsMTEgQEAgdm9pZCBkbWFfYnVmX3VuaW5pdF9zeXNmc19zdGF0aXN0aWNzKHZvaWQpDQog
CWtzZXRfdW5yZWdpc3RlcihkbWFfYnVmX3N0YXRzX2tzZXQpOw0KIH0NCiANCi1pbnQgZG1hX2J1
Zl9zdGF0c19zZXR1cChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KK2ludCBkbWFfYnVmX3N0YXRz
X3NldHVwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBmaWxlICpmaWxlKQ0KIHsNCiAJ
c3RydWN0IGRtYV9idWZfc3lzZnNfZW50cnkgKnN5c2ZzX2VudHJ5Ow0KIAlpbnQgcmV0Ow0KIA0K
LQlpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5maWxlKQ0KLQkJcmV0dXJuIC1FSU5WQUw7DQotDQog
CWlmICghZG1hYnVmLT5leHBfbmFtZSkgew0KIAkJcHJfZXJyKCJleHBvcnRlciBuYW1lIG11c3Qg
bm90IGJlIGVtcHR5IGlmIHN0YXRzIG5lZWRlZFxuIik7DQogCQlyZXR1cm4gLUVJTlZBTDsNCkBA
IC0xOTIsNyArMTg5LDcgQEAgaW50IGRtYV9idWZfc3RhdHNfc2V0dXAoc3RydWN0IGRtYV9idWYg
KmRtYWJ1ZikNCiANCiAJLyogY3JlYXRlIHRoZSBkaXJlY3RvcnkgZm9yIGJ1ZmZlciBzdGF0cyAq
Lw0KIAlyZXQgPSBrb2JqZWN0X2luaXRfYW5kX2FkZCgmc3lzZnNfZW50cnktPmtvYmosICZkbWFf
YnVmX2t0eXBlLCBOVUxMLA0KLQkJCQkgICAiJWx1IiwgZmlsZV9pbm9kZShkbWFidWYtPmZpbGUp
LT5pX2lubyk7DQorCQkJCSAgICIlbHUiLCBmaWxlX2lub2RlKGZpbGUpLT5pX2lubyk7DQogCWlm
IChyZXQpDQogCQlnb3RvIGVycl9zeXNmc19kbWFidWY7DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuaCBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LXN5c2ZzLXN0YXRzLmgNCmluZGV4IGE0OWM2ZTI2NTBjYy4uN2E4YTk5NWI3NWJhIDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuaA0KKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuaA0KQEAgLTEzLDcgKzEzLDcgQEANCiBpbnQg
ZG1hX2J1Zl9pbml0X3N5c2ZzX3N0YXRpc3RpY3Modm9pZCk7DQogdm9pZCBkbWFfYnVmX3VuaW5p
dF9zeXNmc19zdGF0aXN0aWNzKHZvaWQpOw0KIA0KLWludCBkbWFfYnVmX3N0YXRzX3NldHVwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYpOw0KK2ludCBkbWFfYnVmX3N0YXRzX3NldHVwKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsIHN0cnVjdCBmaWxlICpmaWxlKTsNCiANCiB2b2lkIGRtYV9idWZfc3Rh
dHNfdGVhcmRvd24oc3RydWN0IGRtYV9idWYgKmRtYWJ1Zik7DQogI2Vsc2UNCkBAIC0yNSw3ICsy
NSw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGRtYV9idWZfaW5pdF9zeXNmc19zdGF0aXN0aWNzKHZv
aWQpDQogDQogc3RhdGljIGlubGluZSB2b2lkIGRtYV9idWZfdW5pbml0X3N5c2ZzX3N0YXRpc3Rp
Y3Modm9pZCkge30NCiANCi1zdGF0aWMgaW5saW5lIGludCBkbWFfYnVmX3N0YXRzX3NldHVwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYpDQorc3RhdGljIGlubGluZSBpbnQgZG1hX2J1Zl9zdGF0c19z
ZXR1cChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZmlsZSAqZmlsZSkNCiB7DQogCXJl
dHVybiAwOw0KIH0NCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggZTZmMzZjMDE0YzRjLi5lYTA4MDQ5YjcwYWUg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQpAQCAtNjE0LDE5ICs2MTQsMTEgQEAgc3RydWN0IGRtYV9idWYgKmRt
YV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykN
CiAJc2l6ZV90IGFsbG9jX3NpemUgPSBzaXplb2Yoc3RydWN0IGRtYV9idWYpOw0KIAlpbnQgcmV0
Ow0KIA0KLQlpZiAoIWV4cF9pbmZvLT5yZXN2KQ0KLQkJYWxsb2Nfc2l6ZSArPSBzaXplb2Yoc3Ry
dWN0IGRtYV9yZXN2KTsNCi0JZWxzZQ0KLQkJLyogcHJldmVudCAmZG1hX2J1ZlsxXSA9PSBkbWFf
YnVmLT5yZXN2ICovDQotCQlhbGxvY19zaXplICs9IDE7DQotDQotCWlmIChXQVJOX09OKCFleHBf
aW5mby0+cHJpdg0KLQkJCSAgfHwgIWV4cF9pbmZvLT5vcHMNCi0JCQkgIHx8ICFleHBfaW5mby0+
b3BzLT5tYXBfZG1hX2J1Zg0KLQkJCSAgfHwgIWV4cF9pbmZvLT5vcHMtPnVubWFwX2RtYV9idWYN
Ci0JCQkgIHx8ICFleHBfaW5mby0+b3BzLT5yZWxlYXNlKSkgew0KKwlpZiAoV0FSTl9PTighZXhw
X2luZm8tPnByaXYgfHwgIWV4cF9pbmZvLT5vcHMNCisJCSAgICB8fCAhZXhwX2luZm8tPm9wcy0+
bWFwX2RtYV9idWYNCisJCSAgICB8fCAhZXhwX2luZm8tPm9wcy0+dW5tYXBfZG1hX2J1Zg0KKwkJ
ICAgIHx8ICFleHBfaW5mby0+b3BzLT5yZWxlYXNlKSkNCiAJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOw0KLQl9DQogDQogCWlmIChXQVJOX09OKGV4cF9pbmZvLT5vcHMtPmNhY2hlX3NndF9tYXBw
aW5nICYmDQogCQkgICAgKGV4cF9pbmZvLT5vcHMtPnBpbiB8fCBleHBfaW5mby0+b3BzLT51bnBp
bikpKQ0KQEAgLTYzOCwxMCArNjMwLDIxIEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9y
dChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCWlmICghdHJ5
X21vZHVsZV9nZXQoZXhwX2luZm8tPm93bmVyKSkNCiAJCXJldHVybiBFUlJfUFRSKC1FTk9FTlQp
Ow0KIA0KKwlmaWxlID0gZG1hX2J1Zl9nZXRmaWxlKGV4cF9pbmZvLT5zaXplLCBleHBfaW5mby0+
ZmxhZ3MpOw0KKwlpZiAoSVNfRVJSKGZpbGUpKSB7DQorCQlyZXQgPSBQVFJfRVJSKGZpbGUpOw0K
KwkJZ290byBlcnJfbW9kdWxlOw0KKwl9DQorDQorCWlmICghZXhwX2luZm8tPnJlc3YpDQorCQlh
bGxvY19zaXplICs9IHNpemVvZihzdHJ1Y3QgZG1hX3Jlc3YpOw0KKwllbHNlDQorCQkvKiBwcmV2
ZW50ICZkbWFfYnVmWzFdID09IGRtYV9idWYtPnJlc3YgKi8NCisJCWFsbG9jX3NpemUgKz0gMTsN
CiAJZG1hYnVmID0ga3phbGxvYyhhbGxvY19zaXplLCBHRlBfS0VSTkVMKTsNCiAJaWYgKCFkbWFi
dWYpIHsNCiAJCXJldCA9IC1FTk9NRU07DQotCQlnb3RvIGVycl9tb2R1bGU7DQorCQlnb3RvIGVy
cl9maWxlOw0KIAl9DQogDQogCWRtYWJ1Zi0+cHJpdiA9IGV4cF9pbmZvLT5wcml2Ow0KQEAgLTY1
Myw0NCArNjU2LDM2IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCWluaXRfd2FpdHF1ZXVlX2hlYWQo
JmRtYWJ1Zi0+cG9sbCk7DQogCWRtYWJ1Zi0+Y2JfaW4ucG9sbCA9IGRtYWJ1Zi0+Y2Jfb3V0LnBv
bGwgPSAmZG1hYnVmLT5wb2xsOw0KIAlkbWFidWYtPmNiX2luLmFjdGl2ZSA9IGRtYWJ1Zi0+Y2Jf
b3V0LmFjdGl2ZSA9IDA7DQorCW11dGV4X2luaXQoJmRtYWJ1Zi0+bG9jayk7DQorCUlOSVRfTElT
VF9IRUFEKCZkbWFidWYtPmF0dGFjaG1lbnRzKTsNCiANCiAJaWYgKCFyZXN2KSB7DQotCQlyZXN2
ID0gKHN0cnVjdCBkbWFfcmVzdiAqKSZkbWFidWZbMV07DQotCQlkbWFfcmVzdl9pbml0KHJlc3Yp
Ow0KKwkJZG1hYnVmLT5yZXN2ID0gKHN0cnVjdCBkbWFfcmVzdiAqKSZkbWFidWZbMV07DQorCQlk
bWFfcmVzdl9pbml0KGRtYWJ1Zi0+cmVzdik7DQorCX0gZWxzZSB7DQorCQlkbWFidWYtPnJlc3Yg
PSByZXN2Ow0KIAl9DQotCWRtYWJ1Zi0+cmVzdiA9IHJlc3Y7DQogDQotCWZpbGUgPSBkbWFfYnVm
X2dldGZpbGUoZG1hYnVmLCBleHBfaW5mby0+ZmxhZ3MpOw0KLQlpZiAoSVNfRVJSKGZpbGUpKSB7
DQotCQlyZXQgPSBQVFJfRVJSKGZpbGUpOw0KKwlyZXQgPSBkbWFfYnVmX3N0YXRzX3NldHVwKGRt
YWJ1ZiwgZmlsZSk7DQorCWlmIChyZXQpDQogCQlnb3RvIGVycl9kbWFidWY7DQotCX0NCiANCisJ
ZmlsZS0+cHJpdmF0ZV9kYXRhID0gZG1hYnVmOw0KKwlmaWxlLT5mX3BhdGguZGVudHJ5LT5kX2Zz
ZGF0YSA9IGRtYWJ1ZjsNCiAJZG1hYnVmLT5maWxlID0gZmlsZTsNCiANCi0JbXV0ZXhfaW5pdCgm
ZG1hYnVmLT5sb2NrKTsNCi0JSU5JVF9MSVNUX0hFQUQoJmRtYWJ1Zi0+YXR0YWNobWVudHMpOw0K
LQ0KIAltdXRleF9sb2NrKCZkYl9saXN0LmxvY2spOw0KIAlsaXN0X2FkZCgmZG1hYnVmLT5saXN0
X25vZGUsICZkYl9saXN0LmhlYWQpOw0KIAltdXRleF91bmxvY2soJmRiX2xpc3QubG9jayk7DQog
DQotCXJldCA9IGRtYV9idWZfc3RhdHNfc2V0dXAoZG1hYnVmKTsNCi0JaWYgKHJldCkNCi0JCWdv
dG8gZXJyX3N5c2ZzOw0KLQ0KIAlyZXR1cm4gZG1hYnVmOw0KIA0KLWVycl9zeXNmczoNCi0JLyoN
Ci0JICogU2V0IGZpbGUtPmZfcGF0aC5kZW50cnktPmRfZnNkYXRhIHRvIE5VTEwgc28gdGhhdCB3
aGVuDQotCSAqIGRtYV9idWZfcmVsZWFzZSgpIGdldHMgaW52b2tlZCBieSBkZW50cnlfb3BzLCBp
dCBleGl0cw0KLQkgKiBlYXJseSBiZWZvcmUgY2FsbGluZyB0aGUgcmVsZWFzZSgpIGRtYV9idWYg
b3AuDQotCSAqLw0KLQlmaWxlLT5mX3BhdGguZGVudHJ5LT5kX2ZzZGF0YSA9IE5VTEw7DQotCWZw
dXQoZmlsZSk7DQogZXJyX2RtYWJ1ZjoNCisJaWYgKCFyZXN2KQ0KKwkJZG1hX3Jlc3ZfZmluaShk
bWFidWYtPnJlc3YpOw0KIAlrZnJlZShkbWFidWYpOw0KK2Vycl9maWxlOg0KKwlmcHV0KGZpbGUp
Ow0KIGVycl9tb2R1bGU6DQogCW1vZHVsZV9wdXQoZXhwX2luZm8tPm93bmVyKTsNCiAJcmV0dXJu
IEVSUl9QVFIocmV0KTsNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
