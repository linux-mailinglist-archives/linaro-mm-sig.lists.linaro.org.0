Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DC576172A6C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Feb 2020 22:46:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAD76617B6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Feb 2020 21:46:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9974C61A11; Thu, 27 Feb 2020 21:46:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3B6360C05;
	Thu, 27 Feb 2020 21:45:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F36160865
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Feb 2020 21:45:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 35AAD60C05; Thu, 27 Feb 2020 21:45:44 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 5061260865
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Feb 2020 21:45:43 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32D23246A2;
 Thu, 27 Feb 2020 21:45:42 +0000 (UTC)
Date: Thu, 27 Feb 2020 13:45:41 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Cong Wang <xiyou.wangcong@gmail.com>
Message-Id: <20200227134541.82309165d59b3ce10848563a@linux-foundation.org>
In-Reply-To: <CAM_iQpU7kXXGuxeOVvAGLoBRvjrhpuw2D=ih=PagGXKK-g_muw@mail.gmail.com>
References: <20200225204446.11378-1-xiyou.wangcong@gmail.com>
 <20200225175418.2d3af2180cbf895b727ce4b1@linux-foundation.org>
 <CAM_iQpU7kXXGuxeOVvAGLoBRvjrhpuw2D=ih=PagGXKK-g_muw@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>,
 syzbot+b2098bc44728a4efb3e9@syzkaller.appspotmail.com,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: free dmabuf->name in
	dma_buf_release()
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

T24gVGh1LCAyNyBGZWIgMjAyMCAxMzozODowMyAtMDgwMCBDb25nIFdhbmcgPHhpeW91Lndhbmdj
b25nQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDU6NTQgUE0g
QW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPgo+ID4g
T24gVHVlLCAyNSBGZWIgMjAyMCAxMjo0NDo0NiAtMDgwMCBDb25nIFdhbmcgPHhpeW91Lndhbmdj
b25nQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gPiBkbWEtYnVmZiBuYW1lIGNhbiBiZSBzZXQg
dmlhIERNQV9CVUZfU0VUX05BTUUgaW9jdGwsIGJ1dCBvbmNlIHNldAo+ID4gPiBpdCBuZXZlciBn
ZXRzIGZyZWVkLgo+ID4gPgo+ID4gPiBGcmVlIGl0IGluIGRtYV9idWZfcmVsZWFzZSgpLgo+ID4g
Pgo+ID4gPiAuLi4KPiA+ID4KPiA+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+
ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiA+IEBAIC0xMDgsNiArMTA4
LDcgQEAgc3RhdGljIGludCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3Ry
dWN0IGZpbGUgKmZpbGUpCj4gPiA+ICAgICAgICAgICAgICAgZG1hX3Jlc3ZfZmluaShkbWFidWYt
PnJlc3YpOwo+ID4gPgo+ID4gPiAgICAgICBtb2R1bGVfcHV0KGRtYWJ1Zi0+b3duZXIpOwo+ID4g
PiArICAgICBrZnJlZShkbWFidWYtPm5hbWUpOwo+ID4gPiAgICAgICBrZnJlZShkbWFidWYpOwo+
ID4gPiAgICAgICByZXR1cm4gMDsKPiA+ID4gIH0KPiA+Cj4gPiBvdy4gIElzIHRoYXQgaW9jdGwg
cHJpdmlsZWdlZD8KPiAKPiBJdCBsb29rcyB1bnByaXZpbGVnZWQgdG8gbWUsIGFzIEkgZG9uJ3Qg
c2VlIGNhcGFibGUoKSBjYWxsZWQgYWxvbmcKPiB0aGUgcGF0aC4KPiAKCk9LLCB0aGFua3MuICBJ
IGFkZGVkIGNjOnN0YWJsZSB0byBteSBjb3B5LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
