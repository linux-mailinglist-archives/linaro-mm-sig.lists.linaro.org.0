Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D70CE7862D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Aug 2023 23:56:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD0353EC22
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Aug 2023 21:56:51 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id 56F304140E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Aug 2023 21:56:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=Mrp6jmUu;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-269304c135aso4191668a91.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Aug 2023 14:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692827774; x=1693432574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U38bdq29Dgw0wCI6R6HBdmbsK4pnEF7143GlmYr1GwQ=;
        b=Mrp6jmUu4GpWFoHogKWjjzeO8Ax1IMjdXWlBJAyGzSAElDqk5H7ZtCmITp4Sqe+vny
         j6iUs/esYyj3bXbRkTT5SbVQoqkrYQZGOpsIQmhySD/rpljYsfMrd3tkYpMNDvMYTAZi
         WACdRZ/DJll+s+LvToCsB45E+xQdGvQvDwb12Q8C1Clo9AHvrlgUgzF1YHeCvhEe2Lom
         jdsyFO7ARX169jOQOcId8oFe7lZthRfWJ+IBIL5H/BA3QmypSNyccRSmpjPsxibGsX2e
         cz+DNLYhO8WlbsPY2NMwrso3/OTGR+Mi4kLoSqMSO3al8DTWJgpU2Ct8I4vLXXQJxLhy
         AqSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692827774; x=1693432574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U38bdq29Dgw0wCI6R6HBdmbsK4pnEF7143GlmYr1GwQ=;
        b=PamrxVTNdNA6mbvvDq3sw+1ibGyj+TGN4OAyOWnJRg3sXGVueo5GnpgEhlROounFPz
         bUdPyTY7hslRZsEbYGhEomHfUBAAE8GBkv5XkAyRst1ijEXTr3fwlzpUM6tWInIE7YKH
         Xf/EkcDQYoFf2L+J8aoJ5tuwr9npwsm849XL2ebzsmzmH2JiPoLPQItif7RbZr4VFhNN
         ZALuWNcGGW84xBtF8OOC06Zi+zL+p1AsWJvTBxdiLNJEuEL6vCM55Cv+0BA39MN7u+9k
         /Cxvc1UFBKakme1HEj+QgtOV+WoL9qQ2yMxZgqvXvvsJ7vMvOnTL9veU0BDc3dEiLnYM
         vF2Q==
X-Gm-Message-State: AOJu0Yw1ncJDlZ14k9sz12oK4ExDRmY0ce0MWS9kdYYb5KZ7neT8Mg+R
	XBQLwAajEOVlelDJvrjaw3k=
X-Google-Smtp-Source: AGHT+IEK9f5kg8gg9H6xaZEI7BweoTyMRpa0VDsD1a1KvfcF409tN8lu1SQutdkpLIAzoxCQZvZB/A==
X-Received: by 2002:a17:90a:bc98:b0:268:b682:23de with SMTP id x24-20020a17090abc9800b00268b68223demr13483090pjr.28.1692827774403;
        Wed, 23 Aug 2023 14:56:14 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:6c80:7c10:75a0:44f4])
        by smtp.gmail.com with ESMTPSA id 23-20020a17090a1a1700b00263e4dc33aasm271029pjk.11.2023.08.23.14.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:56:13 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 23 Aug 2023 14:54:56 -0700
Message-ID: <20230823215458.203366-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823215458.203366-1-robdclark@gmail.com>
References: <20230823215458.203366-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 56F304140E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.51:from];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com,chromium.org,amd.com,collabora.com,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LIEXE5XXKYZXEPNZXOI4QC2ZVZYQYCMX
X-Message-ID-Hash: LIEXE5XXKYZXEPNZXOI4QC2ZVZYQYCMX
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Xaver Hugl <xaver.hugl@gmail.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Pekka Paalanen <pekka.paalanen@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 3/3] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIEXE5XXKYZXEPNZXOI4QC2ZVZYQYCMX/>
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
Ym9zZSBVQVBJIGRvY3MsIHNob3cgaG93IHRvIGNvbnZlcnQgZnJvbSB0aW1lc3BlYw0KdjQ6IEJl
dHRlciBjb21tZW50cywgdHJhY2sgdGhlIHNvb25lc3QgZGVhZGxpbmUsIGFzIGEgbm9ybWFsIGZl
bmNlDQogICAgaW1wbGVtZW50YXRpb24gd291bGQsIHJldHVybiBhbiBlcnJvciBpZiBubyBkZWFk
bGluZSBzZXQuDQoNClNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVt
Lm9yZz4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQpBY2tlZC1ieTogUGVra2EgUGFhbGFuZW4gPHBla2thLnBhYWxhbmVuQGNvbGxhYm9y
YS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jICAgIHwgODIgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrDQogZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcu
aCB8ICAyICsNCiAyIGZpbGVzIGNoYW5nZWQsIDg0IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5j
DQppbmRleCBmMGEzNTI3N2ZkODQuLmMzNTMwMjk3ODljZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9zd19zeW5jLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCkBAIC01
MiwxMiArNTIsMzMgQEAgc3RydWN0IHN3X3N5bmNfY3JlYXRlX2ZlbmNlX2RhdGEgew0KIAlfX3Mz
MglmZW5jZTsgLyogZmQgb2YgbmV3IGZlbmNlICovDQogfTsNCiANCisvKioNCisgKiBzdHJ1Y3Qg
c3dfc3luY19nZXRfZGVhZGxpbmUgLSBnZXQgdGhlIGRlYWRsaW5lIGhpbnQgb2YgYSBzd19zeW5j
IGZlbmNlDQorICogQGRlYWRsaW5lX25zOiBhYnNvbHV0ZSB0aW1lIG9mIHRoZSBkZWFkbGluZQ0K
KyAqIEBwYWQ6CW11c3QgYmUgemVybw0KKyAqIEBmZW5jZV9mZDoJdGhlIHN3X3N5bmMgZmVuY2Ug
ZmQgKGluKQ0KKyAqDQorICogUmV0dXJuIHRoZSBlYXJsaWVzdCBkZWFkbGluZSBzZXQgb24gdGhl
IGZlbmNlLiAgVGhlIHRpbWViYXNlIGZvciB0aGUNCisgKiBkZWFkbGluZSBpcyBDTE9DS19NT05P
VE9OSUMgKHNhbWUgYXMgdmJsYW5rKS4gIElmIHRoZXJlIGlzIG5vIGRlYWRsaW5lDQorICogc2V0
IG9uIHRoZSBmZW5jZSwgdGhpcyBpb2N0bCB3aWxsIHJldHVybiAtRU5PRU5ULg0KKyAqLw0KK3N0
cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSB7DQorCV9fdTY0CWRlYWRsaW5lX25zOw0KKwlfX3Uz
MglwYWQ7DQorCV9fczMyCWZlbmNlX2ZkOw0KK307DQorDQogI2RlZmluZSBTV19TWU5DX0lPQ19N
QUdJQwknVycNCiANCiAjZGVmaW5lIFNXX1NZTkNfSU9DX0NSRUFURV9GRU5DRQlfSU9XUihTV19T
WU5DX0lPQ19NQUdJQywgMCxcDQogCQlzdHJ1Y3Qgc3dfc3luY19jcmVhdGVfZmVuY2VfZGF0YSkN
CiANCiAjZGVmaW5lIFNXX1NZTkNfSU9DX0lOQwkJCV9JT1coU1dfU1lOQ19JT0NfTUFHSUMsIDEs
IF9fdTMyKQ0KKyNkZWZpbmUgU1dfU1lOQ19HRVRfREVBRExJTkUJCV9JT1dSKFNXX1NZTkNfSU9D
X01BR0lDLCAyLCBcDQorCQlzdHJ1Y3Qgc3dfc3luY19nZXRfZGVhZGxpbmUpDQorDQorDQorI2Rl
ZmluZSBTV19TWU5DX0hBU19ERUFETElORV9CSVQJRE1BX0ZFTkNFX0ZMQUdfVVNFUl9CSVRTDQog
DQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wczsN
CiANCkBAIC0xNzEsNiArMTkyLDIyIEBAIHN0YXRpYyB2b2lkIHRpbWVsaW5lX2ZlbmNlX3RpbWVs
aW5lX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiAJc25wcmludGYoc3RyLCBz
aXplLCAiJWQiLCBwYXJlbnQtPnZhbHVlKTsNCiB9DQogDQorc3RhdGljIHZvaWQgdGltZWxpbmVf
ZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRs
aW5lKQ0KK3sNCisJc3RydWN0IHN5bmNfcHQgKnB0ID0gZG1hX2ZlbmNlX3RvX3N5bmNfcHQoZmVu
Y2UpOw0KKwl1bnNpZ25lZCBsb25nIGZsYWdzOw0KKw0KKwlzcGluX2xvY2tfaXJxc2F2ZShmZW5j
ZS0+bG9jaywgZmxhZ3MpOw0KKwlpZiAodGVzdF9iaXQoU1dfU1lOQ19IQVNfREVBRExJTkVfQklU
LCAmZmVuY2UtPmZsYWdzKSkgew0KKwkJaWYgKGt0aW1lX2JlZm9yZShkZWFkbGluZSwgcHQtPmRl
YWRsaW5lKSkNCisJCQlwdC0+ZGVhZGxpbmUgPSBkZWFkbGluZTsNCisJfSBlbHNlIHsNCisJCXB0
LT5kZWFkbGluZSA9IGRlYWRsaW5lOw0KKwkJX19zZXRfYml0KFNXX1NZTkNfSEFTX0RFQURMSU5F
X0JJVCwgJmZlbmNlLT5mbGFncyk7DQorCX0NCisJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5j
ZS0+bG9jaywgZmxhZ3MpOw0KK30NCisNCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9v
cHMgdGltZWxpbmVfZmVuY2Vfb3BzID0gew0KIAkuZ2V0X2RyaXZlcl9uYW1lID0gdGltZWxpbmVf
ZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KIAkuZ2V0X3RpbWVsaW5lX25hbWUgPSB0aW1lbGluZV9m
ZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCkBAIC0xNzksNiArMjE2LDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wcyA9IHsNCiAJLnJlbGVhc2Ug
PSB0aW1lbGluZV9mZW5jZV9yZWxlYXNlLA0KIAkuZmVuY2VfdmFsdWVfc3RyID0gdGltZWxpbmVf
ZmVuY2VfdmFsdWVfc3RyLA0KIAkudGltZWxpbmVfdmFsdWVfc3RyID0gdGltZWxpbmVfZmVuY2Vf
dGltZWxpbmVfdmFsdWVfc3RyLA0KKwkuc2V0X2RlYWRsaW5lID0gdGltZWxpbmVfZmVuY2Vfc2V0
X2RlYWRsaW5lLA0KIH07DQogDQogLyoqDQpAQCAtMzg3LDYgKzQyNSw0NyBAQCBzdGF0aWMgbG9u
ZyBzd19zeW5jX2lvY3RsX2luYyhzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBs
b25nIGFyZykNCiAJcmV0dXJuIDA7DQogfQ0KIA0KK3N0YXRpYyBpbnQgc3dfc3luY19pb2N0bF9n
ZXRfZGVhZGxpbmUoc3RydWN0IHN5bmNfdGltZWxpbmUgKm9iaiwgdW5zaWduZWQgbG9uZyBhcmcp
DQorew0KKwlzdHJ1Y3Qgc3dfc3luY19nZXRfZGVhZGxpbmUgZGF0YTsNCisJc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7DQorCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQorCXN0cnVjdCBzeW5jX3B0ICpw
dDsNCisJaW50IHJldCA9IDA7DQorDQorCWlmIChjb3B5X2Zyb21fdXNlcigmZGF0YSwgKHZvaWQg
X191c2VyICopYXJnLCBzaXplb2YoZGF0YSkpKQ0KKwkJcmV0dXJuIC1FRkFVTFQ7DQorDQorCWlm
IChkYXRhLmRlYWRsaW5lX25zIHx8IGRhdGEucGFkKQ0KKwkJcmV0dXJuIC1FSU5WQUw7DQorDQor
CWZlbmNlID0gc3luY19maWxlX2dldF9mZW5jZShkYXRhLmZlbmNlX2ZkKTsNCisJaWYgKCFmZW5j
ZSkNCisJCXJldHVybiAtRUlOVkFMOw0KKw0KKwlwdCA9IGRtYV9mZW5jZV90b19zeW5jX3B0KGZl
bmNlKTsNCisJaWYgKCFwdCkNCisJCXJldHVybiAtRUlOVkFMOw0KKw0KKwlzcGluX2xvY2tfaXJx
c2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOw0KKwlpZiAodGVzdF9iaXQoU1dfU1lOQ19IQVNfREVB
RExJTkVfQklULCAmZmVuY2UtPmZsYWdzKSkgew0KKwkJZGF0YS5kZWFkbGluZV9ucyA9IGt0aW1l
X3RvX25zKHB0LT5kZWFkbGluZSk7DQorCX0gZWxzZSB7DQorCQlyZXQgPSAtRU5PRU5UOw0KKwl9
DQorCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsNCisNCisJZG1h
X2ZlbmNlX3B1dChmZW5jZSk7DQorDQorCWlmIChyZXQpDQorCQlyZXR1cm4gcmV0Ow0KKw0KKwlp
ZiAoY29weV90b191c2VyKCh2b2lkIF9fdXNlciAqKWFyZywgJmRhdGEsIHNpemVvZihkYXRhKSkp
DQorCQlyZXR1cm4gLUVGQVVMVDsNCisNCisJcmV0dXJuIDA7DQorfQ0KKw0KIHN0YXRpYyBsb25n
IHN3X3N5bmNfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQogCQkJ
ICB1bnNpZ25lZCBsb25nIGFyZykNCiB7DQpAQCAtMzk5LDYgKzQ3OCw5IEBAIHN0YXRpYyBsb25n
IHN3X3N5bmNfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQogCWNh
c2UgU1dfU1lOQ19JT0NfSU5DOg0KIAkJcmV0dXJuIHN3X3N5bmNfaW9jdGxfaW5jKG9iaiwgYXJn
KTsNCiANCisJY2FzZSBTV19TWU5DX0dFVF9ERUFETElORToNCisJCXJldHVybiBzd19zeW5jX2lv
Y3RsX2dldF9kZWFkbGluZShvYmosIGFyZyk7DQorDQogCWRlZmF1bHQ6DQogCQlyZXR1cm4gLUVO
T1RUWTsNCiAJfQ0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggYi9k
cml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oDQppbmRleCA2MTc2ZTUyYmEyZDcuLmExYmRkNjJl
ZmNjZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgNCisrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgNCkBAIC01NSwxMSArNTUsMTMgQEAgc3RhdGljIGlu
bGluZSBzdHJ1Y3Qgc3luY190aW1lbGluZSAqZG1hX2ZlbmNlX3BhcmVudChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSkNCiAgKiBAYmFzZTogYmFzZSBmZW5jZSBvYmplY3QNCiAgKiBAbGluazogbGlu
ayBvbiB0aGUgc3luYyB0aW1lbGluZSdzIGxpc3QNCiAgKiBAbm9kZTogbm9kZSBpbiB0aGUgc3lu
YyB0aW1lbGluZSdzIHRyZWUNCisgKiBAZGVhZGxpbmU6IHRoZSBlYXJsaWVzdCBmZW5jZSBkZWFk
bGluZSBoaW50DQogICovDQogc3RydWN0IHN5bmNfcHQgew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlIGJh
c2U7DQogCXN0cnVjdCBsaXN0X2hlYWQgbGluazsNCiAJc3RydWN0IHJiX25vZGUgbm9kZTsNCisJ
a3RpbWVfdCBkZWFkbGluZTsNCiB9Ow0KIA0KIGV4dGVybiBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVy
YXRpb25zIHN3X3N5bmNfZGVidWdmc19mb3BzOw0KLS0gDQoyLjQxLjANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
