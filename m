Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7598616168F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2020 16:45:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9871560428
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2020 15:45:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8A700619A8; Mon, 17 Feb 2020 15:45:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08C62619AF;
	Mon, 17 Feb 2020 15:45:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E599D60F43
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 15:45:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D8902618CA; Mon, 17 Feb 2020 15:45:14 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 9205F60F43
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 15:45:13 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id q9so17605284wmj.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 07:45:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bk8Dl3EQzDBZc3sM1wqRJRPyzqsxBh5vDspKM3eX+so=;
 b=Do2inrNBRacM1CS3dYd4u+Q3qK4E5inE3K1ukCDFs2lkwbhSjGUOI2lOYxBfR8LhHF
 wSLTOCo2veDUhtbkBk9lrTzRHPyDsBxq63R1vl9J8JETZgNJCe5N1s1pBVoKn/0meOgx
 pd1Ay2+mgk6fVR1mu1gF/OBvAcJqNFszyjYADP6RCBjtfeF51jSl1PDb+I8iLQWcKW5l
 PEDM1cE5KoF6JrMr4lI7611LjfMmLqaFycUa/ZyapViPEBC5SKem9ggcAITX83Pzz+y2
 aJlotBC/Rv3H+IogJ6sxRacKMO3maa0mRekMoEuI5shs6kidN2jTP6u5Nkl6YkkWXJVT
 AHbQ==
X-Gm-Message-State: APjAAAWgD4J0uJTz8AXADAll7y9xJZvNjMGtRTZP0AiZPvL1pq0mBP2+
 NOcenRd9FvA/uRxmtQjL1O4=
X-Google-Smtp-Source: APXvYqxsNPkGShSg1gX/ncCQ6dLNr0YQg7ZPft5wm9SohggaPkW0AhZe8qWm+XdqGRvs6lUVE4JxwQ==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr22840668wma.121.1581954312699; 
 Mon, 17 Feb 2020 07:45:12 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:180d:d2d6:6ff9:a6cb])
 by smtp.gmail.com with ESMTPSA id r6sm1372658wrq.92.2020.02.17.07.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 07:45:12 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Mon, 17 Feb 2020 16:45:04 +0100
Message-Id: <20200217154509.2265-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] RFC: Unpinned DMA-buf handling
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

SGkgZXZlcnlvbmUsCgpob3BlZnVsbHkgdGhlIGxhc3QgaXRlcmF0aW9uIG9mIHRob3NlIHBhdGNo
ZXMuCgpGb3Igbm93IEkndmUgYWRkcmVzc2VkIHRoZSBpc3N1ZSBvZiB1bm1hcHBpbmcgaW1wb3J0
ZWQgQk9zIGZyb20gdGhlIGFtZGdwdSBwYWdlIHRhYmxlcyBpbW1lZGlhdGVseSBieSBsb2NraW5n
IHRoZSBwYWdlIHRhYmxlcyBpbiBwbGFjZS4KCkZvciBITU0gaGFuZGxpbmcgd2UgYXJlIGdldHRp
bmcgdGhlIGFiaWxpdHkgdG8gaW52YWxpZGF0ZSBCT3Mgd2l0aG91dCBsb2NraW5nIHRoZSBWTSBh
bnl3YXksIHNvIHRoaXMgbGFzdCBUT0RPIHdpbGwgcHJvYmFibHkgZ28gYXdheSByYXRoZXIgc29v
bi4KClBsYWNlIGNvbW1lbnQsCkNocmlzdGlhbi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
