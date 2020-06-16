Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC91FB128
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 14:51:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E57666506
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 12:51:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 660BB6659B; Tue, 16 Jun 2020 12:51:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E50FF61810;
	Tue, 16 Jun 2020 12:50:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9D43F617AE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 12:50:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 885B461810; Tue, 16 Jun 2020 12:50:41 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id B8850617AE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 12:50:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21513227-1500050 for multiple; Tue, 16 Jun 2020 13:50:19 +0100
MIME-Version: 1.0
In-Reply-To: <CAO_48GFVYOv8Km7fEh8iBPp7d5ziySBV0vB9nu_+oset6hBO8w@mail.gmail.com>
References: <20200611114418.19852-1-sumit.semwal@linaro.org>
 <CAO_48GFVYOv8Km7fEh8iBPp7d5ziySBV0vB9nu_+oset6hBO8w@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <159231181752.18853.1290700688849491922@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 16 Jun 2020 13:50:17 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Move dma_buf_release() from
	fops to dentry_ops
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

UXVvdGluZyBTdW1pdCBTZW13YWwgKDIwMjAtMDYtMTYgMTM6NDI6MTMpCj4gSGVsbG8sCj4gCj4g
SWYgdGhlcmUgYXJlIG5vIG9iamVjdGlvbnMgdG8gdGhpcywgSSB3aWxsIHBsYW4gdG8gbWVyZ2Ug
aXQgc29vbi4KCkkgd2FzIGdvaW5nIHRvIHN1Z2dlc3QgcnVubmluZyBpdCBhZ2FpbnN0IG91ciBD
SSwgYnV0IHRoYXQncyB1bmF2YWlsYWJsZQphdCB0aGUgbW9tZW50LgoKVGhlcmUncyBhIHBhcnRp
Y3VsYXJseSBuYXN0eSBCVUdfT04oKSBpbiBkbWFfYnVmX3JlbGVhc2UgdGhhdCB3ZSBoaXQKaXJy
ZWd1bGFybHksIHRoYXQgdGhpcyBtaWdodCBoZWxwIHdpdGguCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
