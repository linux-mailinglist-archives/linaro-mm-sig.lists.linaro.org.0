Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E3184E07
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 15:56:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BE1F60BD7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 13:56:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3542617DA; Wed,  7 Aug 2019 13:56:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07D90617F2;
	Wed,  7 Aug 2019 13:55:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5A70617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 13:55:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D7587617F1; Wed,  7 Aug 2019 13:55:34 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 97143617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 13:54:07 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id v19so115193wmj.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Aug 2019 06:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UHavv916lCJg3UwiviOVhG8s4PuTXTB/08YllDykGXs=;
 b=DqXD66yFhOAHfzvG8LHvMyFIHjn19iWq2s59wsteNZ2v8k6oUcHfsapuvR2u6buoXA
 48QfDiNiGhsRCnB2mHH/3AVFbN51z9gefGz8B1+OySNDdwPUST/w6EqbMlr2ho8Q6lyZ
 69p7S/B6F5e3fhHho+bmYpqSq/TZ/dRlykAWtD/wE8Itc0D+//elq835Mf23xt/ylqhj
 EEf1+TIbTbLTRgEhkphE5MmpSoxEb2KexGSyVscTzwY5HeTJks3IWnBOIvdIINQxau+e
 6HZezC2D9iHDJt8+IkFAEcrngJawXYXvHuU5LaxWPhIkDcbb1qSJbgqYkX2MIc5TR3Ao
 l15A==
X-Gm-Message-State: APjAAAW1Ef58m/6wRrkntm/jUeuXjJ20mW2vaWeQUnP37XsXuG7fu+cQ
 FFML15+vlp824L/Yf2AAIA0=
X-Google-Smtp-Source: APXvYqyAw9zyxdJYItG/T6o5sZ3K8SxDYuw0C50draZ0SR54F9UscnMG3+RU369WMIN/JiJtm/zzFg==
X-Received: by 2002:a1c:4087:: with SMTP id n129mr98012wma.3.1565186046894;
 Wed, 07 Aug 2019 06:54:06 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:645a:5b76:280d:27be])
 by smtp.gmail.com with ESMTPSA id a6sm86308wmj.15.2019.08.07.06.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 06:54:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Wed,  7 Aug 2019 15:54:05 +0200
Message-Id: <20190807135405.2036-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] dma-buf: make dma_fence structure a bit
	smaller
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

VGhlIHJ1YyBhbmQgY2JfbGlzdCBhcmUgbmV2ZXIgdXNlZCBhdCB0aGUgc2FtZSB0aW1lLgpUaGlz
IHNtYWwgY2hhbmdlIGlzIGFjdHVhbGx5IG1ha2luZyB0aGUgc3RydWN0dXJlIDE2JSBzbWFsbGVy
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgotLS0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA2ICsrKystLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAppbmRleCAw
NWQyOWRiYzdlNjIuLjM5ODVjNzJjZDBjMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCkBAIC02NSw4ICs2NSwxMCBA
QCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiOwogc3RydWN0IGRtYV9mZW5jZSB7CiAJc3RydWN0IGtyZWYg
cmVmY291bnQ7CiAJY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wczsKLQlzdHJ1Y3QgcmN1
X2hlYWQgcmN1OwotCXN0cnVjdCBsaXN0X2hlYWQgY2JfbGlzdDsKKwl1bmlvbiB7CisJCXN0cnVj
dCByY3VfaGVhZCByY3U7CisJCXN0cnVjdCBsaXN0X2hlYWQgY2JfbGlzdDsKKwl9OwogCXNwaW5s
b2NrX3QgKmxvY2s7CiAJdTY0IGNvbnRleHQ7CiAJdTY0IHNlcW5vOwotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
