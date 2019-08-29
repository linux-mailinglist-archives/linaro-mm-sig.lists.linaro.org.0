Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 66745A1CC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Aug 2019 16:29:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98B43617F2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Aug 2019 14:29:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 88D6C6184D; Thu, 29 Aug 2019 14:29:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98E7C6182E;
	Thu, 29 Aug 2019 14:29:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 72A3160E2C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2019 14:29:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5D72B61738; Thu, 29 Aug 2019 14:29:21 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 7F56260E2C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2019 14:29:20 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id e16so3668532wro.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2019 07:29:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7g/y5PId58FBV9AxP3wgyIbUubszr2SWr/wxO3+PHsU=;
 b=JdZaFwLW3arUvSiz3jIs4tTSyGXe2qAmZFHNvtw/fYESF6ArfUaILYudBvEIOzQVrZ
 rnGjP0ykkruaIE+6hunXcCUEFi7laEZJzfsb72ivffTZo73MX2WafcsltrTkNrE83EF5
 vWY0W4/IOM7QR/6rLZP/EZnewFX9ayscYNPTfAYr9vXoTQ/n6asmIFxWZgXpqhs61w8F
 v20qRq2H1Y66w3a8UmlzO3lCqzvZo4sJ0zVzuqNy7Cdw+2wfafeyIPsmVGcljN05noho
 XBEWhFqvxRqKhWHNgGRYWyR+/fG0692FIV+/dbiIdvh70E5Rj1wT3HwGfUwOfP0zQNwE
 qwBw==
X-Gm-Message-State: APjAAAVO2/KpA0G7kzB/yuGJxJyPK5tywmZ+N85GW4irs0KiVbHAOzq3
 b3/7xVdEK0UFK2LGMzrv+mo=
X-Google-Smtp-Source: APXvYqzKZLIfFnwS40rzEl1kixT8OInSOURUhvtrE3VQ3sE80yvzvGSQu1j7qToXBv93Lgqkywqd8g==
X-Received: by 2002:adf:f1cc:: with SMTP id z12mr11776405wro.125.1567088959682; 
 Thu, 29 Aug 2019 07:29:19 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d57:5a0b:4833:fc9f])
 by smtp.gmail.com with ESMTPSA id w13sm6188214wre.44.2019.08.29.07.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 07:29:19 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 16:29:13 +0200
Message-Id: <20190829142917.13058-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Dynamic DMA-buf locking changes
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

SGkgZXZlcnlvbmUsCgpzaW5jZSB1cHN0cmVhbWluZyB0aGUgZnVsbCBkeW5hbWljIERNQS1idWYg
Y2hhbmdlcyB0dXJuZWQgb3V0IG1vcmUgcHJvYmxlbWF0aWMgdGhhbiBwcmV2aW91c2x5IHRob3Vn
aHQgSSd2ZSByZXZlcnRlZCBiYWNrIHRvIGluZGl2aWR1YWwgcGF0Y2hlcyBhbmQgc2VwYXJhdGVk
IG91dCBvbmx5IHRoZSBsb2NraW5nIGNoYW5nZXMuCgpTbyB0aGlzIHBhdGNoIGRvZXMgTk9UIGNv
bnRhaW4gYW55IG5ldyBjYWxsYmFja3MgZm9yIHBpbm5pbmcvdW5waW5uaW5nIGFuZCBtb3ZlIG5v
dGlmaWNhdGlvbiwgYnV0IG9ubHkgdGhlIGxvY2tpbmcgY2hhbmdlcyBuZWNlc3NhcnkuCgpBcyBw
cmV2aW91c2x5IGRpc2N1c3NlZCB3aGVuIHRoZSBmcmFtZXdvcmsgZGV0ZWN0cyB0aGF0IHRoZSBs
b2NraW5nIHNlbWFudGljcyBiZXR3ZWVuIGV4cG9ydGVyIGFuZCBpbXBvcnRlciBhcmUgZGlmZmVy
ZW50IGl0IGp1c3QgZmFsbHMgYmFjayB0byB1c2luZyBhIGNhY2hlZCBzZ3QgY3JlYXRlZCBkdXJp
bmcgYXR0YWNoIHRpbWUuCgpXaGlsZSBzZXBhcmF0aW5nIHRoZSBwYXRjaCBzZXQgSSd2ZSBtb3N0
IGxpa2VseSBzdHVtYmxlZCBvdmVyIHRoZSBwcm9ibGVtIHdoeSB0aGlzIHByZXZpb3VzbHkgcmFp
c2VkIHNvbWUgbG9ja2RlcCB3YXJuaW5nIHdpdGggaTkxNSwgaXQgdHVybmVkIG91dCB0byBiZSBq
dXN0IGEgbWlnaHRfbG9jaygpIGF0IHRoZSB3cm9uZyBwbGFjZS4KClBsZWFzZSByZXZpZXcgYW5k
L29yIGNvbW1lbnQsCkNocmlzdGlhbi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
