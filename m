Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 211D11CF077
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:01:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E1AD618EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:01:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 29A7B65FB5; Tue, 12 May 2020 09:01:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B8BA61993;
	Tue, 12 May 2020 09:00:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8019261831
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 08:59:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 71165617CF; Tue, 12 May 2020 08:59:59 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 2CEA8617CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 08:59:58 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y24so22393799wma.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 01:59:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kLx974NIZMqcTtktEjSZjvXzGFT/sN3zaOFqis6ynJ4=;
 b=eKPm0IBu1JSAfWFU3CMb24BNPPRLk1ghTAunHZ+SY3Fz5lX9Uittoenj7uwVOVQKZW
 61Qny6N9QPTSg2b7+elXCkmxg3DIc+K9zau+rV+OOIGl9etYoB76yj1TD7XSC57wfXb8
 COd0tJghY1mA25OAk1F7rHRi9cBawoAMBOtgskz71kdB45CRMdsRlcXy0DPyMM2KcxO4
 /VyJ9zy+CMEctDRNhuwuL6UVBrppMradS8Qc/FwohzKRkPB8Fg7kB25zD1dhxIMeQv2b
 4TX/lFpgMXJkMe6EaI54loAncj8TgKfF30tq/BsFlwxn3gm7LyDWS1degJhlC0Yj0sng
 wOUA==
X-Gm-Message-State: AGi0PuZUgWyJsKU/AxLzMXskBqfhBC/M6kHGulIJCdR8FUY1CSm2h5Xs
 7jjHhqNwKDPK8ksPTphv9L+2pQ==
X-Google-Smtp-Source: APiQypLaGju2WZXVsNW4k3kb0cNDedDZi8kpgkf+bDmSvA+Y9bm9G0CROCbMCdeWzLKRHchbjRrBkQ==
X-Received: by 2002:a05:600c:2dda:: with SMTP id
 e26mr27240272wmh.42.1589273997304; 
 Tue, 12 May 2020 01:59:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.01.59.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 01:59:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:28 +0200
Message-Id: <20200512085944.222637-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC 01/17] dma-fence: add might_sleep annotation
	to _wait()
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

QnV0IG9ubHkgZm9yIG5vbi16ZXJvIHRpbWVvdXQsIHRvIGF2b2lkIGZhbHNlIHBvc2l0aXZlcy4K
Ck9uZSBxdWVzdGlvbiBoZXJlIGlzIHdoZXRoZXIgdGhlIG1pZ2h0X3NsZWVwIHNob3VsZCBiZSB1
bmNvbmRpdGlvbmFsLApvciBvbmx5IGZvciByZWFsIHRpbWVvdXRzLiBJJ20gbm90IHN1cmUsIHNv
IHdlbnQgd2l0aCB0aGUgbW9yZQpkZWZlbnNpdmUgb3B0aW9uLiBCdXQgaW4gdGhlIGludGVyZXN0
IG9mIGxvY2tpbmcgZG93biB0aGUgY3Jvc3MtZHJpdmVyCmRtYV9mZW5jZSBydWxlcyB3ZSBtaWdo
dCB3YW50IHRvIGJlIG1vcmUgYWdncmVzc2l2ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5l
bC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2
Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDMgKysrCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCmluZGV4IDA1MmE0MWUyNDUxYy4u
NjgwMjEyNTM0OWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCkBAIC0yMDgsNiArMjA4LDkgQEAgZG1hX2Zl
bmNlX3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgYm9vbCBpbnRyLCBzaWdu
ZWQgbG9uZyB0aW1lb3V0KQogCWlmIChXQVJOX09OKHRpbWVvdXQgPCAwKSkKIAkJcmV0dXJuIC1F
SU5WQUw7CiAKKwlpZiAodGltZW91dCA+IDApCisJCW1pZ2h0X3NsZWVwKCk7CisKIAl0cmFjZV9k
bWFfZmVuY2Vfd2FpdF9zdGFydChmZW5jZSk7CiAJaWYgKGZlbmNlLT5vcHMtPndhaXQpCiAJCXJl
dCA9IGZlbmNlLT5vcHMtPndhaXQoZmVuY2UsIGludHIsIHRpbWVvdXQpOwotLSAKMi4yNi4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
