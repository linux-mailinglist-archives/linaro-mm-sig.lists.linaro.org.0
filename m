Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 042AF6B0DCC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:56:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14E4A3F0BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:56:14 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4D4C63F0A8
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:53:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=hfdXz4jO;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.52 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id kb15so16928658pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678290824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7R63CoBZtJMfA86gou0TfD+TouGekss1Too/FYrW8+0=;
        b=hfdXz4jOd+OukmC7hKeFeC3vBHB5KuFLxBB7YN/QV/mq2/V4jNaGxTMPrXeQKQkQmD
         AaZRq1EgBaKP0J8pj5dNTjdb3zSCwePl+yXAu26wRNqKBpIB+XXp5vpoYid9hEN6uUPH
         8hrSaXayEGrqrTh12jZMH/OHOV9InK0TnFOqsACHryt5Zd4FrVivoQD4G5rzp47+kvXt
         cTGAMQ2Rx9Gsny2VbLyNQJyaQ/B/bo459BhVbBcnJr2R6Pb0XIRz51XNgHq0OFKwX7lb
         1tFTUwp0s2EGXPsawnzmZKJY6XSQHy2cvpKjPMdNa6M0thtb7ZMs1QVgM4nSq+xXhPvp
         ej6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7R63CoBZtJMfA86gou0TfD+TouGekss1Too/FYrW8+0=;
        b=yOuy0/es1SIniAS0v/MLxdY+Zxpiw2f2rovf/w+XausJxNKKwmPd/MMMr7iydUszUp
         YPRMeMC306EbQ+agXM4eAKieCGT3H/MJlRrAHuKaBi+nZsvxikueokmjTKUTAuwk2sda
         RhEGaGewg0v7hcwu8ppCOk6JR1H1q520vOvv+6qiIoWClGpeUknL5r7Bn5633ZvOTetg
         8fiv0p4ftlh1Tvxi5mMfA2Iw4O8NHVoS1KSyvyk+f4jjFiarfM8mieosVI1Ag19LHYqU
         HqeEwFOxhcfa1jw5wkZEe+6b+m/6E+NF/Cv2dKIzbqfEGCl4O65y+pI7s/iChR61dm7D
         2mgg==
X-Gm-Message-State: AO0yUKWG2iltzRv6FrOcKANMVs0wUqurVeQ12WmXKOjyrDCt+irlh/BX
	0VTDvEKzWSyqiWFmLO4Dqwc=
X-Google-Smtp-Source: AK7set9VWySp/EEDPOfU7yF9deM5PZLiei/UE2FUhrw+77eugdZGu35j3KdSb6ehP8g6/+J2Rk+Law==
X-Received: by 2002:a17:902:e88e:b0:19e:5965:8694 with SMTP id w14-20020a170902e88e00b0019e59658694mr24366035plg.60.1678290823859;
        Wed, 08 Mar 2023 07:53:43 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id a5-20020a170902ecc500b00198ac2769aesm9998945plh.135.2023.03.08.07.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 07:53:43 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:52:58 -0800
Message-Id: <20230308155322.344664-8-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4D4C63F0A8
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.52:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,collabora.com,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 5TMVGKZWQ27DIEEORDMDLGGJBD2GG74Q
X-Message-ID-Hash: 5TMVGKZWQ27DIEEORDMDLGGJBD2GG74Q
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Pekka Paalanen <pekka.paalanen@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 07/15] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5TMVGKZWQ27DIEEORDMDLGGJBD2GG74Q/>
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
YS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jICAgIHwgODEgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrDQogZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcu
aCB8ICAyICsNCiAyIGZpbGVzIGNoYW5nZWQsIDgzIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5j
DQppbmRleCAzNDhiM2E5MTcwZmEuLmY1MzA3MWJjYTNhZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
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
LT5kZWFkbGluZSA9IGRlYWRsaW5lOw0KKwkJc2V0X2JpdChTV19TWU5DX0hBU19ERUFETElORV9C
SVQsICZmZW5jZS0+ZmxhZ3MpOw0KKwl9DQorCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2Ut
PmxvY2ssIGZsYWdzKTsNCit9DQorDQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3Bz
IHRpbWVsaW5lX2ZlbmNlX29wcyA9IHsNCiAJLmdldF9kcml2ZXJfbmFtZSA9IHRpbWVsaW5lX2Zl
bmNlX2dldF9kcml2ZXJfbmFtZSwNCiAJLmdldF90aW1lbGluZV9uYW1lID0gdGltZWxpbmVfZmVu
Y2VfZ2V0X3RpbWVsaW5lX25hbWUsDQpAQCAtMTc5LDYgKzIxNiw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9mZW5jZV9vcHMgPSB7DQogCS5yZWxlYXNlID0g
dGltZWxpbmVfZmVuY2VfcmVsZWFzZSwNCiAJLmZlbmNlX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2Zl
bmNlX3ZhbHVlX3N0ciwNCiAJLnRpbWVsaW5lX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3Rp
bWVsaW5lX3ZhbHVlX3N0ciwNCisJLnNldF9kZWFkbGluZSA9IHRpbWVsaW5lX2ZlbmNlX3NldF9k
ZWFkbGluZSwNCiB9Ow0KIA0KIC8qKg0KQEAgLTM4Nyw2ICs0MjUsNDYgQEAgc3RhdGljIGxvbmcg
c3dfc3luY19pb2N0bF9pbmMoc3RydWN0IHN5bmNfdGltZWxpbmUgKm9iaiwgdW5zaWduZWQgbG9u
ZyBhcmcpDQogCXJldHVybiAwOw0KIH0NCiANCitzdGF0aWMgaW50IHN3X3N5bmNfaW9jdGxfZ2V0
X2RlYWRsaW5lKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGxvbmcgYXJnKQ0K
K3sNCisJc3RydWN0IHN3X3N5bmNfZ2V0X2RlYWRsaW5lIGRhdGE7DQorCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOw0KKwlzdHJ1Y3Qgc3luY19wdCAqcHQ7DQorCWludCByZXQgPSAwOw0KKw0KKwlp
ZiAoY29weV9mcm9tX3VzZXIoJmRhdGEsICh2b2lkIF9fdXNlciAqKWFyZywgc2l6ZW9mKGRhdGEp
KSkNCisJCXJldHVybiAtRUZBVUxUOw0KKw0KKwlpZiAoZGF0YS5kZWFkbGluZV9ucyB8fCBkYXRh
LnBhZCkNCisJCXJldHVybiAtRUlOVkFMOw0KKw0KKwlmZW5jZSA9IHN5bmNfZmlsZV9nZXRfZmVu
Y2UoZGF0YS5mZW5jZV9mZCk7DQorCWlmICghZmVuY2UpDQorCQlyZXR1cm4gLUVJTlZBTDsNCisN
CisJcHQgPSBkbWFfZmVuY2VfdG9fc3luY19wdChmZW5jZSk7DQorCWlmICghcHQpDQorCQlyZXR1
cm4gLUVJTlZBTDsNCisNCisJc3Bpbl9sb2NrKGZlbmNlLT5sb2NrKTsNCisJaWYgKHRlc3RfYml0
KFNXX1NZTkNfSEFTX0RFQURMSU5FX0JJVCwgJmZlbmNlLT5mbGFncykpIHsNCisJCWRhdGEuZGVh
ZGxpbmVfbnMgPSBrdGltZV90b19ucyhwdC0+ZGVhZGxpbmUpOw0KKwl9IGVsc2Ugew0KKwkJcmV0
ID0gLUVOT0VOVDsNCisJfQ0KKwlzcGluX3VubG9jayhmZW5jZS0+bG9jayk7DQorDQorCWRtYV9m
ZW5jZV9wdXQoZmVuY2UpOw0KKw0KKwlpZiAocmV0KQ0KKwkJcmV0dXJuIHJldDsNCisNCisJaWYg
KGNvcHlfdG9fdXNlcigodm9pZCBfX3VzZXIgKilhcmcsICZkYXRhLCBzaXplb2YoZGF0YSkpKQ0K
KwkJcmV0dXJuIC1FRkFVTFQ7DQorDQorCXJldHVybiAwOw0KK30NCisNCiBzdGF0aWMgbG9uZyBz
d19zeW5jX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgY21kLA0KIAkJCSAg
dW5zaWduZWQgbG9uZyBhcmcpDQogew0KQEAgLTM5OSw2ICs0NzcsOSBAQCBzdGF0aWMgbG9uZyBz
d19zeW5jX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgY21kLA0KIAljYXNl
IFNXX1NZTkNfSU9DX0lOQzoNCiAJCXJldHVybiBzd19zeW5jX2lvY3RsX2luYyhvYmosIGFyZyk7
DQogDQorCWNhc2UgU1dfU1lOQ19HRVRfREVBRExJTkU6DQorCQlyZXR1cm4gc3dfc3luY19pb2N0
bF9nZXRfZGVhZGxpbmUob2JqLCBhcmcpOw0KKw0KIAlkZWZhdWx0Og0KIAkJcmV0dXJuIC1FTk9U
VFk7DQogCX0NCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oIGIvZHJp
dmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0KaW5kZXggNjE3NmU1MmJhMmQ3Li5hMWJkZDYyZWZj
Y2QgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oDQorKysgYi9kcml2
ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oDQpAQCAtNTUsMTEgKzU1LDEzIEBAIHN0YXRpYyBpbmxp
bmUgc3RydWN0IHN5bmNfdGltZWxpbmUgKmRtYV9mZW5jZV9wYXJlbnQoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpDQogICogQGJhc2U6IGJhc2UgZmVuY2Ugb2JqZWN0DQogICogQGxpbms6IGxpbmsg
b24gdGhlIHN5bmMgdGltZWxpbmUncyBsaXN0DQogICogQG5vZGU6IG5vZGUgaW4gdGhlIHN5bmMg
dGltZWxpbmUncyB0cmVlDQorICogQGRlYWRsaW5lOiB0aGUgZWFybGllc3QgZmVuY2UgZGVhZGxp
bmUgaGludA0KICAqLw0KIHN0cnVjdCBzeW5jX3B0IHsNCiAJc3RydWN0IGRtYV9mZW5jZSBiYXNl
Ow0KIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpbms7DQogCXN0cnVjdCByYl9ub2RlIG5vZGU7DQorCWt0
aW1lX3QgZGVhZGxpbmU7DQogfTsNCiANCiBleHRlcm4gY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0
aW9ucyBzd19zeW5jX2RlYnVnZnNfZm9wczsNCi0tIA0KMi4zOS4yDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
