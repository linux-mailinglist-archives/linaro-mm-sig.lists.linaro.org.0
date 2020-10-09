Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 587B7288C2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 17:05:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79B746654B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 15:05:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 64AB266592; Fri,  9 Oct 2020 15:05:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1FBE664EC;
	Fri,  9 Oct 2020 15:03:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7A29460639
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:03:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6D3C76650A; Fri,  9 Oct 2020 15:03:51 +0000 (UTC)
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by lists.linaro.org (Postfix) with ESMTPS id B4F3260639
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:03:45 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id p13so9680910edi.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 08:03:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HfGOHdnl8P4UkAJXJm+asFhJ2S9PMVltmlEIidPYuz0=;
 b=BT2H7uORqY84CRfS0FGAu7mmGfJP12ecJASipmcnpNGu7t8coMVt4QTl/54pFnRX4j
 R+uFIDnAPrpYRB4wu9c3Mped8Pw2n9B0hhAe/+5TMfTFcgsEq8R7XcQbbyJTvm0enZzw
 btKNWSbPHFeO172QNHQ3ihPQu2kjdAchs/vxPmjNilPyxM4PBvanQ4Lxzim9Q8V+76hm
 KbwCc+VteTxz6WRDGM1A9lXVCdjDQpTCuvxNB/YIGOA0fVXDYPbr08zUpzIPMw24g9Pi
 jmf8EKRqeuk7D5B1Rqs5CbeNXHgrxzqeZ1I1teqKl+6BlPMfgQTUhD/w5UDM5jLunT9v
 pP4w==
X-Gm-Message-State: AOAM5316sy/ykiEQatrV37TKRUTpNZrn4yjz17OyQpYK6IkwZHzGnGdm
 sfIgC1tZ0BTe4uSt7tDe7/g=
X-Google-Smtp-Source: ABdhPJyibPjE78lcVPlBYyG6PW0fP1GpDj3X5Tpm1VzsO7r6v4QYdB2IMOhxokvqNlnbjQNZuzUauQ==
X-Received: by 2002:aa7:cc18:: with SMTP id q24mr8619083edt.108.1602255824666; 
 Fri, 09 Oct 2020 08:03:44 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:65f3:51d4:50d0:15b0])
 by smtp.gmail.com with ESMTPSA id v14sm789364edy.68.2020.10.09.08.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:03:43 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, daniel@ffwll.ch, sumit.semwal@linaro.org,
 willy@infradead.org, jhubbard@nvidia.com, jgg@ziepe.ca
Date: Fri,  9 Oct 2020 17:03:37 +0200
Message-Id: <20201009150342.1979-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/6] mm: mmap: fix fput in error path
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

UGF0Y2ggIjQ5NWMxMGNjMWMwYyBDSFJPTUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgph
ZGRzIGEgd29ya2Fyb3VuZCBmb3IgYSBidWcgaW4gbW1hcF9yZWdpb24uCgpBcyB0aGUgY29tbWVu
dCBzdGF0ZXMgLT5tbWFwKCkgY2FsbGJhY2sgY2FuIGNoYW5nZQp2bWEtPnZtX2ZpbGUgYW5kIHNv
IHdlIG1pZ2h0IGNhbGwgZnB1dCgpIG9uIHRoZSB3cm9uZyBmaWxlLgoKUmV2ZXJ0IHRoZSB3b3Jr
YXJvdW5kIGFuZCBwcm9wZXIgZml4IHRoaXMgaW4gbW1hcF9yZWdpb24uCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDIyICsrKysrLS0tLS0tLS0tLS0tLS0tLS0KIG1tL21tYXAu
YyAgICAgICAgICAgICAgICAgfCAgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IGE2YmE0ZDU5OGYwZS4uZWRkNTc0
MDJhNDhhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTExNDMsOSArMTE0Myw2IEBAIEVYUE9SVF9TWU1CT0xf
R1BMKGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MpOwogaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKIAkJIHVuc2lnbmVkIGxv
bmcgcGdvZmYpCiB7Ci0Jc3RydWN0IGZpbGUgKm9sZGZpbGU7Ci0JaW50IHJldDsKLQogCWlmIChX
QVJOX09OKCFkbWFidWYgfHwgIXZtYSkpCiAJCXJldHVybiAtRUlOVkFMOwogCkBAIC0xMTYzLDIy
ICsxMTYwLDEzIEBAIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3Ry
dWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCXJldHVybiAtRUlOVkFMOwogCiAJLyogcmVhZGp1
c3QgdGhlIHZtYSAqLwotCWdldF9maWxlKGRtYWJ1Zi0+ZmlsZSk7Ci0Jb2xkZmlsZSA9IHZtYS0+
dm1fZmlsZTsKLQl2bWEtPnZtX2ZpbGUgPSBkbWFidWYtPmZpbGU7Ci0Jdm1hLT52bV9wZ29mZiA9
IHBnb2ZmOworCWlmICh2bWEtPnZtX2ZpbGUpCisJCWZwdXQodm1hLT52bV9maWxlKTsKIAotCXJl
dCA9IGRtYWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKLQlpZiAocmV0KSB7Ci0JCS8qIHJl
c3RvcmUgb2xkIHBhcmFtZXRlcnMgb24gZmFpbHVyZSAqLwotCQl2bWEtPnZtX2ZpbGUgPSBvbGRm
aWxlOwotCQlmcHV0KGRtYWJ1Zi0+ZmlsZSk7Ci0JfSBlbHNlIHsKLQkJaWYgKG9sZGZpbGUpCi0J
CQlmcHV0KG9sZGZpbGUpOwotCX0KLQlyZXR1cm4gcmV0OworCXZtYS0+dm1fZmlsZSA9IGdldF9m
aWxlKGRtYWJ1Zi0+ZmlsZSk7CisJdm1hLT52bV9wZ29mZiA9IHBnb2ZmOwogCisJcmV0dXJuIGRt
YWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9i
dWZfbW1hcCk7CiAKZGlmZiAtLWdpdCBhL21tL21tYXAuYyBiL21tL21tYXAuYwppbmRleCA0MDI0
OGQ4NGFkNWYuLjNhMjY3MGQ3MzM1NSAxMDA2NDQKLS0tIGEvbW0vbW1hcC5jCisrKyBiL21tL21t
YXAuYwpAQCAtMTg1Miw4ICsxODUyLDggQEAgdW5zaWduZWQgbG9uZyBtbWFwX3JlZ2lvbihzdHJ1
Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgbG9uZyBhZGRyLAogCXJldHVybiBhZGRyOwogCiB1bm1h
cF9hbmRfZnJlZV92bWE6CisJZnB1dCh2bWEtPnZtX2ZpbGUpOwogCXZtYS0+dm1fZmlsZSA9IE5V
TEw7Ci0JZnB1dChmaWxlKTsKIAogCS8qIFVuZG8gYW55IHBhcnRpYWwgbWFwcGluZyBkb25lIGJ5
IGEgZGV2aWNlIGRyaXZlci4gKi8KIAl1bm1hcF9yZWdpb24obW0sIHZtYSwgcHJldiwgdm1hLT52
bV9zdGFydCwgdm1hLT52bV9lbmQpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
