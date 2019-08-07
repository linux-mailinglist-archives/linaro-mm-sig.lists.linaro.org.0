Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C36284DFE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 15:55:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4964F617F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 13:55:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C4BD617FA; Wed,  7 Aug 2019 13:55:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 658AF617ED;
	Wed,  7 Aug 2019 13:53:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 11A9A60BD7
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 13:53:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05100617ED; Wed,  7 Aug 2019 13:53:18 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 28EF2617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 13:53:16 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s3so140313wms.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Aug 2019 06:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cJze+NHLGVWRPTthMI0DgfPkje+BdJ75ftz5VrySl6s=;
 b=oohTG6O/ipCYT+5mu/cQm14ya4IY9Hf7aggobJP9QP53cKuEz/ik30QcNpE4LW10SO
 CnUJb/OXzMUunHfrTrdebea/CnKTlAEkKkZrna8o5FuH6Z7Pso6vZpesMpp7HpvaVHMk
 N+D3YRXLA8Mul/MZ76RS+ZM6QtzoJd1YHka+IhaGhghxOlWBqssD1FWer8E90yrjqpZO
 FO2bmicwwvBhQCwfxLEdppe/2Zj/oeFPjHKt511sIKrdbV4hom0v3akwpySdU+Vod6E8
 jmZwl1n3zODadF7EvJlLwWbsNnFyjlRjnFmuPgHPxOilO+VQKeJtabfRVCyhGDqwr250
 JWbQ==
X-Gm-Message-State: APjAAAViSR1M3oIYAvt4jNAYic4/LFsc+dTk7pR8f7Mcr5X9sVkYzzzH
 88C10f9jMBdJdVnYzt1cZbQ=
X-Google-Smtp-Source: APXvYqwpabXbeHTqbvSJaIu+EAJ/zd1P1g/dx9tCgNNgO4WSW2fIzS/U0FJSqjxaQPaKo3LGuYd3Ow==
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr132066wmb.4.1565185995209;
 Wed, 07 Aug 2019 06:53:15 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:645a:5b76:280d:27be])
 by smtp.gmail.com with ESMTPSA id o11sm33095wmh.37.2019.08.07.06.53.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 06:53:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Wed,  7 Aug 2019 15:53:11 +0200
Message-Id: <20190807135312.1730-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190807135312.1730-1-christian.koenig@amd.com>
References: <20190807135312.1730-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/4] dma-buf: further relax
	reservation_object_add_shared_fence
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3RoZXIgY29yZXMgZG9uJ3QgYnVzeSB3YWl0IGFueSBtb3JlIGFuZCB3ZSByZW1vdmVkIHRoZSBs
YXN0IHVzZXIgb2YgY2hlY2tpbmcKdGhlIHNlcW5vIGZvciBjaGFuZ2VzLiBEcm9wIHVwZGF0aW5n
IHRoZSBudW1iZXIgZm9yIHNoYXJlZCBmZW5jZXMgYWx0b2dldGhlci4KClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJz
L2RtYS1idWYvcmVzZXJ2YXRpb24uYyAgICAgICAgICAgICAgICAgICAgfCA2IC0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9ncHV2bS5jIHwgNyArLS0tLS0t
CiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9y
ZXNlcnZhdGlvbi5jCmluZGV4IDhmY2FkZGZmZDVkNC4uOTBiYzZlZjAzNTk4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYworKysgYi9kcml2ZXJzL2RtYS1idWYvcmVz
ZXJ2YXRpb24uYwpAQCAtMjM3LDkgKzIzNyw2IEBAIHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2Fk
ZF9zaGFyZWRfZmVuY2Uoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCWZvYmogPSBy
ZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2xpc3Qob2JqKTsKIAljb3VudCA9IGZvYmotPnNoYXJlZF9j
b3VudDsKIAotCXByZWVtcHRfZGlzYWJsZSgpOwotCXdyaXRlX3NlcWNvdW50X2JlZ2luKCZvYmot
PnNlcSk7Ci0KIAlmb3IgKGkgPSAwOyBpIDwgY291bnQ7ICsraSkgewogCiAJCW9sZCA9IHJjdV9k
ZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLApAQCAtMjU3LDkgKzI1NCw2IEBA
IHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRfZmVuY2Uoc3RydWN0IHJlc2VydmF0
aW9uX29iamVjdCAqb2JqLAogCVJDVV9JTklUX1BPSU5URVIoZm9iai0+c2hhcmVkW2ldLCBmZW5j
ZSk7CiAJLyogcG9pbnRlciB1cGRhdGUgbXVzdCBiZSB2aXNpYmxlIGJlZm9yZSB3ZSBleHRlbmQg
dGhlIHNoYXJlZF9jb3VudCAqLwogCXNtcF9zdG9yZV9tYihmb2JqLT5zaGFyZWRfY291bnQsIGNv
dW50KTsKLQotCXdyaXRlX3NlcWNvdW50X2VuZCgmb2JqLT5zZXEpOwotCXByZWVtcHRfZW5hYmxl
KCk7CiAJZG1hX2ZlbmNlX3B1dChvbGQpOwogfQogRVhQT1JUX1NZTUJPTChyZXNlcnZhdGlvbl9v
YmplY3RfYWRkX3NoYXJlZF9mZW5jZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfYW1ka2ZkX2dwdXZtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfYW1ka2ZkX2dwdXZtLmMKaW5kZXggZmUwNjJiNzZlYzkxLi5hNDY0MGRkYzI0ZDEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZ3B1
dm0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2dwdXZt
LmMKQEAgLTI1MSwxMiArMjUxLDcgQEAgc3RhdGljIGludCBhbWRncHVfYW1ka2ZkX3JlbW92ZV9l
dmljdGlvbl9mZW5jZShzdHJ1Y3QgYW1kZ3B1X2JvICpibywKIAluZXctPnNoYXJlZF9tYXggPSBv
bGQtPnNoYXJlZF9tYXg7CiAJbmV3LT5zaGFyZWRfY291bnQgPSBrOwogCi0JLyogSW5zdGFsbCB0
aGUgbmV3IGZlbmNlIGxpc3QsIHNlcWNvdW50IHByb3ZpZGVzIHRoZSBiYXJyaWVycyAqLwotCXBy
ZWVtcHRfZGlzYWJsZSgpOwotCXdyaXRlX3NlcWNvdW50X2JlZ2luKCZyZXN2LT5zZXEpOwotCVJD
VV9JTklUX1BPSU5URVIocmVzdi0+ZmVuY2UsIG5ldyk7Ci0Jd3JpdGVfc2VxY291bnRfZW5kKCZy
ZXN2LT5zZXEpOwotCXByZWVtcHRfZW5hYmxlKCk7CisJcmN1X2Fzc2lnbl9wb2ludGVyKHJlc3Yt
PmZlbmNlLCBuZXcpOwogCiAJLyogRHJvcCB0aGUgcmVmZXJlbmNlcyB0byB0aGUgcmVtb3ZlZCBm
ZW5jZXMgb3IgbW92ZSB0aGVtIHRvIGVmX2xpc3QgKi8KIAlmb3IgKGkgPSBqLCBrID0gMDsgaSA8
IG9sZC0+c2hhcmVkX2NvdW50OyArK2kpIHsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
