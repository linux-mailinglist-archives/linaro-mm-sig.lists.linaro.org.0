Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1D4210A46
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 13:26:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9971F66539
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 11:26:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8D12B6653E; Wed,  1 Jul 2020 11:26:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19E3C6654F;
	Wed,  1 Jul 2020 11:26:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B1F0066539
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 11:26:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8CB636654F; Wed,  1 Jul 2020 11:26:03 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id 5C48966539
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 11:26:02 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id ga4so24130748ejb.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jul 2020 04:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lZj26CwH+3KxgC+hP0OazVEBLvLFOKJxYzi5I45O0dE=;
 b=kLfBzhha5FIRRSvJ3iLKbgqUWIgFsKCTpeBkM25wzlrAvfqV7eh+t/63rT+bFZpFdS
 xXCvmKkwHfiphe/r3G0w7ajPlk5dItTOYxKXZ4Vyj5I7IvW32k8PMWgN98/D8Q73kD/9
 ZMRSI+kusgBuzFR1s7dMKUv9JEBN9VwZC/L2xh+5ZGa22VuVoKR6aaFCNs6rzHu+rgp0
 vthevCtxPg1ZdDgcy6sfEaADi/Ee/mPXuHe/s0Jr7RnKtjV69w0qgEwTiW+bNlEd9ZnS
 +u/55ZZ7ya45+vEx/AW6rFhTNVOMogI63uZgDCcsdwkNYMZgTUkjhsgo2gnM99s0dJd7
 JslQ==
X-Gm-Message-State: AOAM5309Gwl7x68yTN3C//xsYMojSL9ukFQRw+fv9cd6AgXQBAES5fqf
 CrDxiomUKAmnHqN2QtqUWrM=
X-Google-Smtp-Source: ABdhPJzyUDA2eZqbagHduFxDpj4PTq6ecxrv60hEWjOpDLWCm4e25kYYhpQDiE4dzu7g49qScmSbEw==
X-Received: by 2002:a17:906:774d:: with SMTP id
 o13mr17128257ejn.373.1593602761308; 
 Wed, 01 Jul 2020 04:26:01 -0700 (PDT)
Received: from laptop.fritz.box ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id e3sm6290442edm.14.2020.07.01.04.26.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 04:26:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Date: Wed,  1 Jul 2020 13:25:59 +0200
Message-Id: <20200701112559.22669-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] MAINTAINERS: Add myself as DMA-buf
	maintainer
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

QXMgZGlzY3Vzc2VkIG9uIHRoZSBsaXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIE1BSU5UQUlORVJTIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01B
SU5UQUlORVJTCmluZGV4IDQwNDc0OTgyYTIxZC4uNWQ3MTMwZjhkMzQyIDEwMDY0NAotLS0gYS9N
QUlOVEFJTkVSUworKysgYi9NQUlOVEFJTkVSUwpAQCAtNTA4OSw2ICs1MDg5LDcgQEAgRjoJZnMv
ZGxtLwogCiBETUEgQlVGRkVSIFNIQVJJTkcgRlJBTUVXT1JLCiBNOglTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgorTToJQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgogTDoJbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCiBMOglkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCiBMOglsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcgKG1vZGVyYXRlZCBmb3Igbm9uLXN1YnNjcmliZXJzKQotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
