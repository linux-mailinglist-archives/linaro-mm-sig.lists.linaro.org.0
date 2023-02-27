Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4106A4B41
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 20:38:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC1913ECEE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 19:38:34 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id 6F19C3F339
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 19:36:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=kPUcQyxx;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.174 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id p6so7076640plf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 11:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LNxsKWr79zliY+Ix7FyHLBv/jvOdd98Ee5355EN3fy4=;
        b=kPUcQyxxpm05goWDvLo1dDZedNX9BX61/F/oPQD/rogzHNKcrjBRHyp5HfUkm0jIMb
         oo4wwdgJQ3AOiWnQ/iqcejiRkYWP4xX2P+0yhJVSlqdITvFns0WnAe8h115A589YL0FS
         VmAPZq2WL/fFgPPhOQNxKo/84nIIo/FqP7rIHr7NlMaCbClO07d7yZATpDUzWZwROngN
         izR+1KnKVH+ixXnnAiAnYbvUXkbWMHpnLbhk4m5kDyedPbFEIM5fmgsREW6G66V8npSE
         lBpKO+3yZVWelSP1GxLN+4Z20eaMZ6Sxt2RT44EGp7FU7uYdG9WG0CMt4DYg3IH9N9LG
         2xCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LNxsKWr79zliY+Ix7FyHLBv/jvOdd98Ee5355EN3fy4=;
        b=FRMso7g1+defnYdqfu6TFFv1Aux7R3HMTEiw2YBnG2f6hPeqXrSTaWFf0G7l9QnB6d
         qn/tIla7vhR+SgMjjRIZDRD/Q1JN6qJfaY9c43/NTyEQ9VSJ+s6adB10Damf3dCqJymy
         HUu6OQHcsZijq9vJhhbCeS+neehst6MeSyPMJ30sZQ5WeB9VNJfusyiR4sgxA4udAAXq
         +iqzmcvqg3F4J7FK9DzXa+E9hctC1YRix8VzsInK37zqa1AIysXeFsLUh3GlCnqvKRi3
         AjXYmoR0zj8AF4HtOv8vWe+TUyq+uVEBYkT1qsTG8PUKU86xNWAReJSII9mPv+kFYJYy
         0acQ==
X-Gm-Message-State: AO0yUKVIbAuOR4MKeO3oRb4eLvwoNR8VIrhaTdJu0sUDi8jHSgSFtGXe
	XWQ/VEDi8dATn7/Udh8/k2M=
X-Google-Smtp-Source: AK7set8aFROWB3JM7O+EwRDn3uJ6BxDpdV0bVN++OBmQjDQK2wy3/MuU7bDrxaniAacd9fi2QaT+ZA==
X-Received: by 2002:a17:902:ea0b:b0:19c:fc7b:69a4 with SMTP id s11-20020a170902ea0b00b0019cfc7b69a4mr8993303plg.65.1677526564596;
        Mon, 27 Feb 2023 11:36:04 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id g24-20020a170902fe1800b001943d58268csm4965963plj.55.2023.02.27.11.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 11:36:04 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 27 Feb 2023 11:35:13 -0800
Message-Id: <20230227193535.2822389-8-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230227193535.2822389-1-robdclark@gmail.com>
References: <20230227193535.2822389-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6F19C3F339
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.174:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.214.174:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.214.174:from]
Message-ID-Hash: L6XWURA52P66UDW3XXZHDKW45CW3LRUI
X-Message-ID-Hash: L6XWURA52P66UDW3XXZHDKW45CW3LRUI
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 07/15] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L6XWURA52P66UDW3XXZHDKW45CW3LRUI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpUaGlzIGNvbnNpc3Rz
IG9mIHNpbXBseSBzdG9yaW5nIHRoZSBtb3N0IHJlY2VudCBkZWFkbGluZSwgYW5kIGFkZGluZyBh
bg0KaW9jdGwgdG8gcmV0cmlldmUgdGhlIGRlYWRsaW5lLiAgVGhpcyBjYW4gYmUgdXNlZCBpbiBj
b25qdW5jdGlvbiB3aXRoDQp0aGUgU0VUX0RFQURMSU5FIGlvY3RsIG9uIGEgZmVuY2UgZmQgZm9y
IHRlc3RpbmcuICBJZS4gY3JlYXRlIHZhcmlvdXMNCnN3X3N5bmMgZmVuY2VzLCBtZXJnZSB0aGVt
IGludG8gYSBmZW5jZS1hcnJheSwgc2V0IGRlYWRsaW5lIG9uIHRoZQ0KZmVuY2UtYXJyYXkgYW5k
IGNvbmZpcm0gdGhhdCBpdCBpcyBwcm9wYWdhdGVkIHByb3Blcmx5IHRvIGVhY2ggZmVuY2UuDQoN
CnYyOiBTd2l0Y2ggVUFCSSB0byBleHByZXNzIGRlYWRsaW5lIGFzIHU2NA0KdjM6IE1vcmUgdmVy
Ym9zZSBVQVBJIGRvY3MsIHNob3cgaG93IHRvIGNvbnZlcnQgZnJvbSB0aW1lc3BlYw0KDQpTaWdu
ZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQpSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJp
dmVycy9kbWEtYnVmL3N3X3N5bmMuYyAgICAgIHwgNTggKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKw0KIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggICB8ICAyICsrDQogaW5j
bHVkZS91YXBpL2xpbnV4L3N5bmNfZmlsZS5oIHwgIDYgKysrLQ0KIDMgZmlsZXMgY2hhbmdlZCwg
NjUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL3N3X3N5bmMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCmluZGV4IDM0OGIz
YTkxNzBmYS4uM2UyMzE1ZWU5NTViIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5
bmMuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KQEAgLTUyLDEyICs1MiwyOCBA
QCBzdHJ1Y3Qgc3dfc3luY19jcmVhdGVfZmVuY2VfZGF0YSB7DQogCV9fczMyCWZlbmNlOyAvKiBm
ZCBvZiBuZXcgZmVuY2UgKi8NCiB9Ow0KIA0KKy8qKg0KKyAqIHN0cnVjdCBzd19zeW5jX2dldF9k
ZWFkbGluZSAtIGdldCB0aGUgZGVhZGxpbmUgaGludCBvZiBhIHN3X3N5bmMgZmVuY2UNCisgKiBA
ZGVhZGxpbmVfbnM6IGFic29sdXRlIHRpbWUgb2YgdGhlIGRlYWRsaW5lDQorICogQHBhZDoJbXVz
dCBiZSB6ZXJvDQorICogQGZlbmNlX2ZkOgl0aGUgc3dfc3luYyBmZW5jZSBmZCAoaW4pDQorICoN
CisgKiBUaGUgdGltZWJhc2UgZm9yIHRoZSBkZWFkbGluZSBpcyBDTE9DS19NT05PVE9OSUMgKHNh
bWUgYXMgdmJsYW5rKQ0KKyAqLw0KK3N0cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSB7DQorCV9f
dTY0CWRlYWRsaW5lX25zOw0KKwlfX3UzMglwYWQ7DQorCV9fczMyCWZlbmNlX2ZkOw0KK307DQor
DQogI2RlZmluZSBTV19TWU5DX0lPQ19NQUdJQwknVycNCiANCiAjZGVmaW5lIFNXX1NZTkNfSU9D
X0NSRUFURV9GRU5DRQlfSU9XUihTV19TWU5DX0lPQ19NQUdJQywgMCxcDQogCQlzdHJ1Y3Qgc3df
c3luY19jcmVhdGVfZmVuY2VfZGF0YSkNCiANCiAjZGVmaW5lIFNXX1NZTkNfSU9DX0lOQwkJCV9J
T1coU1dfU1lOQ19JT0NfTUFHSUMsIDEsIF9fdTMyKQ0KKyNkZWZpbmUgU1dfU1lOQ19HRVRfREVB
RExJTkUJCV9JT1dSKFNXX1NZTkNfSU9DX01BR0lDLCAyLCBcDQorCQlzdHJ1Y3Qgc3dfc3luY19n
ZXRfZGVhZGxpbmUpDQogDQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVs
aW5lX2ZlbmNlX29wczsNCiANCkBAIC0xNzEsNiArMTg3LDEzIEBAIHN0YXRpYyB2b2lkIHRpbWVs
aW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiAJ
c25wcmludGYoc3RyLCBzaXplLCAiJWQiLCBwYXJlbnQtPnZhbHVlKTsNCiB9DQogDQorc3RhdGlj
IHZvaWQgdGltZWxpbmVfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LCBrdGltZV90IGRlYWRsaW5lKQ0KK3sNCisJc3RydWN0IHN5bmNfcHQgKnB0ID0gZG1hX2ZlbmNl
X3RvX3N5bmNfcHQoZmVuY2UpOw0KKw0KKwlwdC0+ZGVhZGxpbmUgPSBkZWFkbGluZTsNCit9DQor
DQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wcyA9
IHsNCiAJLmdldF9kcml2ZXJfbmFtZSA9IHRpbWVsaW5lX2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwN
CiAJLmdldF90aW1lbGluZV9uYW1lID0gdGltZWxpbmVfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUs
DQpAQCAtMTc5LDYgKzIwMiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0
aW1lbGluZV9mZW5jZV9vcHMgPSB7DQogCS5yZWxlYXNlID0gdGltZWxpbmVfZmVuY2VfcmVsZWFz
ZSwNCiAJLmZlbmNlX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3ZhbHVlX3N0ciwNCiAJLnRp
bWVsaW5lX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0ciwNCisJ
LnNldF9kZWFkbGluZSA9IHRpbWVsaW5lX2ZlbmNlX3NldF9kZWFkbGluZSwNCiB9Ow0KIA0KIC8q
Kg0KQEAgLTM4Nyw2ICs0MTEsMzcgQEAgc3RhdGljIGxvbmcgc3dfc3luY19pb2N0bF9pbmMoc3Ry
dWN0IHN5bmNfdGltZWxpbmUgKm9iaiwgdW5zaWduZWQgbG9uZyBhcmcpDQogCXJldHVybiAwOw0K
IH0NCiANCitzdGF0aWMgaW50IHN3X3N5bmNfaW9jdGxfZ2V0X2RlYWRsaW5lKHN0cnVjdCBzeW5j
X3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGxvbmcgYXJnKQ0KK3sNCisJc3RydWN0IHN3X3N5bmNf
Z2V0X2RlYWRsaW5lIGRhdGE7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KKwlzdHJ1Y3Qg
c3luY19wdCAqcHQ7DQorDQorCWlmIChjb3B5X2Zyb21fdXNlcigmZGF0YSwgKHZvaWQgX191c2Vy
ICopYXJnLCBzaXplb2YoZGF0YSkpKQ0KKwkJcmV0dXJuIC1FRkFVTFQ7DQorDQorCWlmIChkYXRh
LmRlYWRsaW5lX25zIHx8IGRhdGEucGFkKQ0KKwkJcmV0dXJuIC1FSU5WQUw7DQorDQorCWZlbmNl
ID0gc3luY19maWxlX2dldF9mZW5jZShkYXRhLmZlbmNlX2ZkKTsNCisJaWYgKCFmZW5jZSkNCisJ
CXJldHVybiAtRUlOVkFMOw0KKw0KKwlwdCA9IGRtYV9mZW5jZV90b19zeW5jX3B0KGZlbmNlKTsN
CisJaWYgKCFwdCkNCisJCXJldHVybiAtRUlOVkFMOw0KKw0KKw0KKwlkYXRhLmRlYWRsaW5lX25z
ID0ga3RpbWVfdG9fbnMocHQtPmRlYWRsaW5lKTsNCisNCisJZG1hX2ZlbmNlX3B1dChmZW5jZSk7
DQorDQorCWlmIChjb3B5X3RvX3VzZXIoKHZvaWQgX191c2VyICopYXJnLCAmZGF0YSwgc2l6ZW9m
KGRhdGEpKSkNCisJCXJldHVybiAtRUZBVUxUOw0KKw0KKwlyZXR1cm4gMDsNCit9DQorDQogc3Rh
dGljIGxvbmcgc3dfc3luY19pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNt
ZCwNCiAJCQkgIHVuc2lnbmVkIGxvbmcgYXJnKQ0KIHsNCkBAIC0zOTksNiArNDU0LDkgQEAgc3Rh
dGljIGxvbmcgc3dfc3luY19pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNt
ZCwNCiAJY2FzZSBTV19TWU5DX0lPQ19JTkM6DQogCQlyZXR1cm4gc3dfc3luY19pb2N0bF9pbmMo
b2JqLCBhcmcpOw0KIA0KKwljYXNlIFNXX1NZTkNfR0VUX0RFQURMSU5FOg0KKwkJcmV0dXJuIHN3
X3N5bmNfaW9jdGxfZ2V0X2RlYWRsaW5lKG9iaiwgYXJnKTsNCisNCiAJZGVmYXVsdDoNCiAJCXJl
dHVybiAtRU5PVFRZOw0KIAl9DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVi
dWcuaCBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgNCmluZGV4IDYxNzZlNTJiYTJkNy4u
MmUwMTQ2ZDBiZGJiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0KQEAgLTU1LDExICs1NSwxMyBAQCBz
dGF0aWMgaW5saW5lIHN0cnVjdCBzeW5jX3RpbWVsaW5lICpkbWFfZmVuY2VfcGFyZW50KHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQ0KICAqIEBiYXNlOiBiYXNlIGZlbmNlIG9iamVjdA0KICAqIEBs
aW5rOiBsaW5rIG9uIHRoZSBzeW5jIHRpbWVsaW5lJ3MgbGlzdA0KICAqIEBub2RlOiBub2RlIGlu
IHRoZSBzeW5jIHRpbWVsaW5lJ3MgdHJlZQ0KKyAqIEBkZWFkbGluZTogdGhlIG1vc3QgcmVjZW50
bHkgc2V0IGZlbmNlIGRlYWRsaW5lDQogICovDQogc3RydWN0IHN5bmNfcHQgew0KIAlzdHJ1Y3Qg
ZG1hX2ZlbmNlIGJhc2U7DQogCXN0cnVjdCBsaXN0X2hlYWQgbGluazsNCiAJc3RydWN0IHJiX25v
ZGUgbm9kZTsNCisJa3RpbWVfdCBkZWFkbGluZTsNCiB9Ow0KIA0KIGV4dGVybiBjb25zdCBzdHJ1
Y3QgZmlsZV9vcGVyYXRpb25zIHN3X3N5bmNfZGVidWdmc19mb3BzOw0KZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9zeW5jX2Zp
bGUuaA0KaW5kZXggNDkzMjVjZjY3NDliLi5kYzY2NDViMjU5OGIgMTAwNjQ0DQotLS0gYS9pbmNs
dWRlL3VhcGkvbGludXgvc3luY19maWxlLmgNCisrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9zeW5j
X2ZpbGUuaA0KQEAgLTcyLDcgKzcyLDExIEBAIHN0cnVjdCBzeW5jX2ZpbGVfaW5mbyB7DQogICog
QGRlYWRsaW5lX25zOiBhYnNvbHV0ZSB0aW1lIG9mIHRoZSBkZWFkbGluZQ0KICAqIEBwYWQ6CW11
c3QgYmUgemVybw0KICAqDQotICogVGhlIHRpbWViYXNlIGZvciB0aGUgZGVhZGxpbmUgaXMgQ0xP
Q0tfTU9OT1RPTklDIChzYW1lIGFzIHZibGFuaykNCisgKiBUaGUgdGltZWJhc2UgZm9yIHRoZSBk
ZWFkbGluZSBpcyBDTE9DS19NT05PVE9OSUMgKHNhbWUgYXMgdmJsYW5rKS4gIEZvcg0KKyAqIGV4
YW1wbGU6DQorICoNCisgKiAgICAgY2xvY2tfZ2V0dGltZShDTE9DS19NT05PVE9OSUMsICZ0KTsN
CisgKiAgICAgZGVhZGxpbmVfbnMgPSAodC50dl9zZWMgKiAxMDAwMDAwMDAwTCkgKyB0LnR2X25z
ZWMgKyBkdXJhdGlvbl9ucw0KICAqLw0KIHN0cnVjdCBzeW5jX3NldF9kZWFkbGluZSB7DQogCV9f
dTY0CWRlYWRsaW5lX25zOw0KLS0gDQoyLjM5LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
