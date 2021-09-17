Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5124540F79C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3172B63538
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:35:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4E97F6682C; Fri, 17 Sep 2021 12:35:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB95D666F6;
	Fri, 17 Sep 2021 12:35:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F0CA96341D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E41C663426; Fri, 17 Sep 2021 12:35:20 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id C71D96341D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:18 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id g16so14929295wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hq6P+apu5QddcJBxT2CG/al9Lr42cPbE+iNSMYU+UVY=;
 b=amvRmOwHV67bbo1i+CVbkv10A+JbdSkOSB1vD0Q1i6Fx+68k/VvP9QGuBbtA06pg9B
 9h/qsezNPrrjHikRUslbltcjZ1ODeSAOCjnY8h7trNOvVO14eqAT5nTy4uW/qJnB9NSq
 NDHp14nzFIwrG1ib5yXZLdkrV12J3+E3WisTbv2avlR7RPEdh0nmi9gE76xBfekVkGIV
 djOHOKL/coO1fqbtMScS5VlQhPuH/x1Aa0twErApdU5OQvwNm6NNkNsi2RAEBrz5kOvh
 iXNIjU4SsLTkwoyr/zV0zv1191nCM78wB4rYUiyg7QwI6XT3LSVohzWBYjdZLpJOK3yn
 oIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hq6P+apu5QddcJBxT2CG/al9Lr42cPbE+iNSMYU+UVY=;
 b=AulR46IMWbein1epL8zWFpbXCgbJT5jSt1K8FfNXhUI5Pzc2AE2NU+h6+BtQbXjxgE
 M/68unwo2ZTGSN/JJgIDAwo7jVdsQ9Nq5RhXb8b3gbH/wUCifOOMJPPjrimeBphJQfgA
 L3mWUEWBjpbfkDjAknLTXj8LvhBMZ/QPwXFVSFS+csp4FYJQcoMFROvpEVmc0TuVnXn4
 +VjNbbeSZHhr+rAsGXCYFP0Yn5nsElfNJ6sudoEaPVQHRV9oV4jOyEnHWWQC6M77oql6
 xeQTdqH5+HOTNJrwN8w6jYKZtdNDJtQBoYDyTOo9zlPXDNf0ZvRMP3oA8PvHF1TxJoDx
 TcBw==
X-Gm-Message-State: AOAM5332sAS0e+XEnPCW5xahDeX8knSTNb8Pz1DlM/6wtSsYRSmmFI44
 Q4OqNSbgZGC+YKNOSmVwj+JlEZuSl0E=
X-Google-Smtp-Source: ABdhPJznMU/ayLHx4F7nt7nhyCxToln+2iLehyrTsiU79E0Izma7IDO7C0N5XoW+cItVQWTWHK5pVQ==
X-Received: by 2002:a5d:4d92:: with SMTP id b18mr11979933wru.245.1631882117877; 
 Fri, 17 Sep 2021 05:35:17 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:17 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:49 +0200
Message-Id: <20210917123513.1106-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/26] dma-buf: add dma_resv_for_each_fence
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1h
X3Jlc3Ygb2JqZWN0IGlzCmxvY2tlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oICAgfCAxNyArKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1MCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCAzZTc3Y2FkMmM5ZDQuLmEzYzc5YTk5ZmI0
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKQEAgLTM4NCw2ICszODQsMzkgQEAgc3RydWN0IGRtYV9mZW5jZSAq
ZG1hX3Jlc3ZfaXRlcl93YWxrX3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3Is
CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9pdGVyX3dhbGtfdW5sb2NrZWQpOwogCisv
KioKKyAqIGRtYV9yZXN2X2l0ZXJfd2FsayAtIHdhbGsgb3ZlciBmZW5jZXMgaW4gYSBkbWFfcmVz
diBvYmoKKyAqIEBjdXJzb3I6IGN1cnNvciB0byByZWNvcmQgdGhlIGN1cnJlbnQgcG9zaXRpb24K
KyAqIEBmaXJzdDogaWYgd2Ugc2hvdWxkIHN0YXJ0IG92ZXIKKyAqCisgKiBSZXR1cm4gYWxsIHRo
ZSBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5nIHRoZQorICogZG1h
X3Jlc3Y6OmxvY2suCisgKi8KK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfd2Fsayhz
dHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yLCBib29sIGZpcnN0KQoreworCWRtYV9yZXN2X2Fz
c2VydF9oZWxkKGN1cnNvci0+b2JqKTsKKworCWN1cnNvci0+aXNfZmlyc3QgPSBmaXJzdDsKKwlp
ZiAoZmlyc3QpIHsKKwkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisKKwkJY3Vyc29yLT5pbmRl
eCA9IC0xOworCQljdXJzb3ItPmZlbmNlcyA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KGN1cnNvci0+
b2JqKTsKKworCQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UoY3Vyc29yLT5vYmopOworCQlp
ZiAoZmVuY2UpCisJCQlyZXR1cm4gZmVuY2U7CisJfQorCisJaWYgKCFjdXJzb3ItPmFsbF9mZW5j
ZXMgfHwgIWN1cnNvci0+ZmVuY2VzIHx8CisJICAgICsrY3Vyc29yLT5pbmRleCA+PSBjdXJzb3It
PmZlbmNlcy0+c2hhcmVkX2NvdW50KQorCQlyZXR1cm4gTlVMTDsKKworCXJldHVybiByY3VfZGVy
ZWZlcmVuY2VfcHJvdGVjdGVkKGN1cnNvci0+ZmVuY2VzLT5zaGFyZWRbY3Vyc29yLT5pbmRleF0s
CisJCQkJCSBkbWFfcmVzdl9oZWxkKGN1cnNvci0+b2JqKSk7Cit9CitFWFBPUlRfU1lNQk9MX0dQ
TChkbWFfcmVzdl9pdGVyX3dhbGspOworCiAvKioKICAqIGRtYV9yZXN2X2NvcHlfZmVuY2VzIC0g
Q29weSBhbGwgZmVuY2VzIGZyb20gc3JjIHRvIGRzdC4KICAqIEBkc3Q6IHRoZSBkZXN0aW5hdGlv
biByZXNlcnZhdGlvbiBvYmplY3QKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAppbmRleCA2OTNkMTYxMTcxNTMuLjhjOTY4Zjhj
OWQzMyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUv
bGludXgvZG1hLXJlc3YuaApAQCAtMTc5LDYgKzE3OSw3IEBAIHN0cnVjdCBkbWFfcmVzdl9pdGVy
IHsKIAogc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl93YWxrX3VubG9ja2VkKHN0cnVj
dCBkbWFfcmVzdl9pdGVyICpjdXJzb3IsCiAJCQkJCSAgICAgIGJvb2wgZmlyc3QpOworc3RydWN0
IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl93YWxrKHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJz
b3IsIGJvb2wgZmlyc3QpOwogCiAvKioKICAqIGRtYV9yZXN2X2l0ZXJfYmVnaW4gLSBpbml0aWFs
aXplIGEgZG1hX3Jlc3ZfaXRlciBvYmplY3QKQEAgLTIzMyw2ICsyMzQsMjIgQEAgc3RhdGljIGlu
bGluZSBib29sIGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKHN0cnVjdCBkbWFfcmVzdl9pdGVy
ICpjdXJzb3IpCiAJZm9yIChmZW5jZSA9IGRtYV9yZXN2X2l0ZXJfd2Fsa191bmxvY2tlZChjdXJz
b3IsIHRydWUpOwkJXAogCSAgICAgZmVuY2U7IGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl93YWxrX3Vu
bG9ja2VkKGN1cnNvciwgZmFsc2UpKQogCisvKioKKyAqIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNl
IC0gZmVuY2UgaXRlcmF0b3IKKyAqIEBjdXJzb3I6IGEgc3RydWN0IGRtYV9yZXN2X2l0ZXIgcG9p
bnRlcgorICogQG9iajogYSBkbWFfcmVzdiBvYmplY3QgcG9pbnRlcgorICogQGFsbF9mZW5jZXM6
IHRydWUgaWYgYWxsIGZlbmNlcyBzaG91bGQgYmUgcmV0dXJuZWQKKyAqIEBmZW5jZTogdGhlIGN1
cnJlbnQgZmVuY2UKKyAqCisgKiBJdGVyYXRlIG92ZXIgdGhlIGZlbmNlcyBpbiBhIHN0cnVjdCBk
bWFfcmVzdiBvYmplY3Qgd2hpbGUgaG9sZGluZyB0aGUKKyAqIGRtYV9yZXN2Ojpsb2NrLiBAYWxs
X2ZlbmNlcyBjb250cm9scyBpZiB0aGUgc2hhcmVkIGZlbmNlcyBhcmUgcmV0dXJuZWQgYXMKKyAq
IHdlbGwuIFRoZSBjdXJzb3IgaW5pdGlhbGlzYXRpb24gaXMgcGFydCBvZiB0aGUgaXRlcmF0b3Iu
CisgKi8KKyNkZWZpbmUgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoY3Vyc29yLCBvYmosIGFsbF9m
ZW5jZXMsIGZlbmNlKQlcCisJZm9yIChkbWFfcmVzdl9pdGVyX2JlZ2luKGN1cnNvciwgb2JqLCBh
bGxfZmVuY2VzKSwJXAorCSAgICAgZmVuY2UgPSBkbWFfcmVzdl9pdGVyX3dhbGsoY3Vyc29yLCB0
cnVlKTsgZmVuY2U7CVwKKwkgICAgIGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl93YWxrKGN1cnNvciwg
ZmFsc2UpKQorCiAjZGVmaW5lIGRtYV9yZXN2X2hlbGQob2JqKSBsb2NrZGVwX2lzX2hlbGQoJihv
YmopLT5sb2NrLmJhc2UpCiAjZGVmaW5lIGRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iaikgbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmKG9iaiktPmxvY2suYmFzZSkKIAotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
