Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A83A104C69
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Nov 2019 08:26:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B950A6184D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Nov 2019 07:26:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A856461990; Thu, 21 Nov 2019 07:26:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FB7860854;
	Thu, 21 Nov 2019 07:26:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B0D5F60683
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Nov 2019 07:26:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A35D060854; Thu, 21 Nov 2019 07:26:22 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id A44B460683
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Nov 2019 07:26:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19280906-1500050 for multiple; Thu, 21 Nov 2019 07:26:09 +0000
MIME-Version: 1.0
To: kernel test robot <lkp@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <5dd63a8f.BFdOlqs/XZAJHDfR%lkp@intel.com>
References: <5dd63a8f.BFdOlqs/XZAJHDfR%lkp@intel.com>
Message-ID: <157432116576.24852.2065478066028556019@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 07:26:05 +0000
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: philip.li@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 LKP <lkp@lists.01.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] 2989f64510 ("dma-buf: Add selftests for
 dma-fence"): WARNING: CPU: 0 PID: 1 at lib/debugobjects.c:524
 __debug_object_init
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

UXVvdGluZyBrZXJuZWwgdGVzdCByb2JvdCAoMjAxOS0xMS0yMSAwNzoxOTo0MykKPiBHcmVldGlu
Z3MsCj4gCj4gMGRheSBrZXJuZWwgdGVzdGluZyByb2JvdCBnb3QgdGhlIGJlbG93IGRtZXNnIGFu
ZCB0aGUgZmlyc3QgYmFkIGNvbW1pdCBpcwo+IAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCBtYXN0ZXIKPiAKPiBjb21t
aXQgMjk4OWY2NDUxMDg0YWVkM2Y4Y2M5OTkyNDc3ZjdhOWJmNTdhMzcxNgo+IEF1dGhvcjogICAg
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IEF1dGhvckRhdGU6IE1v
biBBdWcgMTkgMTA6NTk6MjcgMjAxOSArMDEwMAo+IENvbW1pdDogICAgIENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENvbW1pdERhdGU6IE1vbiBBdWcgMTkgMTg6MDk6
NDYgMjAxOSArMDEwMAoKVGhhdCdzIGEgYmVsYXRlZCByZXBvcnQsIGZpeGVkIGJ5Cgpjb21taXQg
NmFjM2EwZWJmY2MyZjBjNzVjYTBjYTY5NzQzODljZTQyMWFhNWNiZApBdXRob3I6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpEYXRlOiAgIFR1ZSBBdWcgMjAgMTM6MjE6
MTggMjAxOSArMDEwMAoKCWRtYWJ1ZjogTWFyayB1cCBvbnN0YWNrIHRpbWVyIGZvciBzZWxmdGVz
dHMKCk5vPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
