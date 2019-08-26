Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F46A9D224
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 16:58:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32EAE618CA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 14:58:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 282C6618CB; Mon, 26 Aug 2019 14:58:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5603D6184B;
	Mon, 26 Aug 2019 14:57:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8A88560B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B3C561810; Mon, 26 Aug 2019 14:57:35 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 5CD3760B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:34 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id c3so15627176wrd.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+7mU6x0kAtNzznIM6tbGCzx9BmVJw914gebmRmVgVcA=;
 b=Tk0q1I/SyG36KNre5ebozkc2FyLRh/6iyqD7+X6MZu/hSHkd4SVAKx4vTrLyHfkIpx
 cPFf5d9dJQyy4OUWM7xybvHPYffsR7foDu6ILc9nMlIUPepaRVum0R9q9bI162OaIrNj
 ZpH2VWKpGNUCg3Q8JD0OhwhoNYfsSI7kG/t5nvyu4oGP7/j+Al5CB+ZJ9UZVEfi0nVpL
 +o1D1ZF9w+v8AhMUmne+fhFv161b4LrkELDZ6CCg8VDxCwc4Fp4qtPp5bmpQZIUtTf4m
 vUzBuwaWcbDIjRc4MqiMR6DWsJlxe7j0rZCzpUEbBkSMjROWaYAeXgKfugoAKV7KHkVT
 Z67g==
X-Gm-Message-State: APjAAAWFExZ2IJZ/KC1tdlF1eihrOW2GBCqu6I0qXGlLXOW5vbHOr5Kt
 G18QoIEAU3NAZho+kZ63GW8=
X-Google-Smtp-Source: APXvYqzJ01QKAXqhYjRzFJkpaImbzq9fBgrlnwuss9AvGR+yjNVevlG9yokk3U3+ulZOCQnkNGkrTA==
X-Received: by 2002:adf:e887:: with SMTP id d7mr22846695wrm.282.1566831453592; 
 Mon, 26 Aug 2019 07:57:33 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:22 +0200
Message-Id: <20190826145731.1725-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Use dma_fence_array for implementing shared
	dma_resv fences
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

VGhpcyBpcyB0aGUgbmV3IGRtYV9mZW5jZV9hcnJheSBiYXNlZCBjb250YWluZXIgZm9yIHNoYXJl
ZCBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdC4KCkFkdmFudGFnZSBvZiB0aGlzIGFwcHJv
YWNoIGlzIHRoYXQgeW91IGNhbiBncmFiIGEgcmVmZXJlbmNlIHRvIHRoZSBjdXJyZW50IHNldCBv
ZiBzaGFyZWQgZmVuY2VzIGF0IGFueSB0aW1lLCB3aGljaCBhbGxvd3MgdXMgdG8gZHJvcCB0aGUg
c2VxdWVuY2UgbnVtYmVyIGluY3JlbWVudCBhbmQgbWFrZXMgdGhlIHdob2xlIFJDVSBoYW5kbGlu
ZyBtdWNoIG1vcmUgZWFzaWVyLgoKRGlzYWR2YW50YWdlIGlzIHRoYXQgUkNVIHVzZXJzIG5vdyBo
YXZlIHRvIGdyYWIgYSByZWZlcmVuY2UgaW5zdGVhZCBvZiB1c2luZyB0aGUgc2VxdWVuY2UgY291
bnRlci4gQXMgZmFyIGFzIEkgY2FuIHNlZSBpOTE1IHdhcyBhY3R1YWxseSB0aGUgb25seSBkcml2
ZXIgZG9pbmcgdGhpcy4KClNvIHdlIG9wdGltaXplIGZvciBhZGRpbmcgbW9yZSBmZW5jZXMgaW5z
dGVhZCBvZiByZWFkaW5nIHRoZW0gbm93LgoKQW5vdGhlciBiZWhhdmlvciBjaGFuZ2Ugd29ydGgg
bm90aW5nIGlzIHRoYXQgdGhlIHNoYXJlZCBmZW5jZXMgYXJlIG5vdyBvbmx5IHZpc2libGUgYWZ0
ZXIgdW5sb2NraW5nIHRoZSBkbWFfcmVzdiBvYmplY3Qgb3IgY2FsbGluZyBkbWFfcmVzdl9mZW5j
ZXNfY29tbWl0KCkgbWFudWFsbHkuCgpQbGVhc2UgcmV2aWV3IGFuZC9vciBjb21tZW50LApDaHJp
c3RpYW4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
