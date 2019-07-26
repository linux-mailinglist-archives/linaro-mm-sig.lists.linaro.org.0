Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D74DD75D2E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jul 2019 04:47:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86F75608EA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jul 2019 02:47:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 74C2B60B1C; Fri, 26 Jul 2019 02:47:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B69F6079A;
	Fri, 26 Jul 2019 02:46:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6B97160593
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jul 2019 02:46:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A4206079A; Fri, 26 Jul 2019 02:46:46 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 5F21860593
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jul 2019 02:46:45 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E14462238C;
 Fri, 26 Jul 2019 02:46:42 +0000 (UTC)
Date: Thu, 25 Jul 2019 22:46:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: syzbot <syzbot+b2098bc44728a4efb3e9@syzkaller.appspotmail.com>
Message-ID: <20190725224641.5d8baeb7@oasis.local.home>
In-Reply-To: <00000000000005dbbc058e8c608d@google.com>
References: <000000000000b68e04058e6a3421@google.com>
 <00000000000005dbbc058e8c608d@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kaber@trash.net, mpe@ellerman.id.au, bsingharora@gmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, davem@davemloft.net,
 linaro-mm-sig@lists.linaro.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, kadlec@blackhole.kfki.hu,
 netdev@vger.kernel.org, mingo@redhat.com, duwe@suse.de, dvyukov@google.com,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] memory leak in dma_buf_ioctl
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

T24gVGh1LCAyNSBKdWwgMjAxOSAxOTozNDowMSAtMDcwMApzeXpib3QgPHN5emJvdCtiMjA5OGJj
NDQ3MjhhNGVmYjNlOUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tPiB3cm90ZToKCj4gc3l6Ym90
IGhhcyBiaXNlY3RlZCB0aGlzIGJ1ZyB0bzoKPiAKPiBjb21taXQgMDRjZjMxYTc1OWVmNTc1Zjc1
MGE2Mzc3N2NlZTk1NTAwZTQxMDk5NAo+IEF1dGhvcjogTWljaGFlbCBFbGxlcm1hbiA8bXBlQGVs
bGVybWFuLmlkLmF1Pgo+IERhdGU6ICAgVGh1IE1hciAyNCAxMTowNDowMSAyMDE2ICswMDAwCj4g
Cj4gICAgICBmdHJhY2U6IE1ha2UgZnRyYWNlX2xvY2F0aW9uX3JhbmdlKCkgZ2xvYmFsCgpJdCdz
IHNhZCB0aGF0IEkgaGF2ZSB5ZXQgdG8gZmluZCBhIHNpbmdsZSBzeXpib3QgYmlzZWN0IHVzZWZ1
bC4gUmVhbGx5PwpzZXR0aW5nIGEgZnVuY3Rpb24gZnJvbSBzdGF0aWMgdG8gZ2xvYmFsIHdpbGwg
Y2F1c2UgYSBtZW1vcnkgbGVhayBpbiBhCmNvbXBsZXRlbHkgdW5yZWxhdGVkIGFyZWEgb2YgdGhl
IGtlcm5lbD8KCkknbSBhYm91dCB0byBzZXQgdGhlc2UgdG8gbXkgL2Rldi9udWxsIGZvbGRlci4K
Ci0tIFN0ZXZlCgoKPiAKPiBiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20veC9iaXNlY3QudHh0P3g9MTU0MjkzZjQ2MDAwMDAKPiBzdGFydCBjb21taXQ6ICAgYWJk
ZmQ1MmEgTWVyZ2UgdGFnICdhcm1zb2MtZGVmY29uZmlnJyBvZiBnaXQ6Ly9naXQua2VybmVsLi4u
Cj4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtCj4gZmluYWwgY3Jhc2g6ICAgIGh0dHBzOi8vc3l6
a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTE3NDI5M2Y0NjAwMDAwCj4gY29uc29s
ZSBvdXRwdXQ6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94PTEzNDI5
M2Y0NjAwMDAwCj4ga2VybmVsIGNvbmZpZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29t
L3gvLmNvbmZpZz94PWQzMWRlM2Q4ODA1OWI3ZmEKPiBkYXNoYm9hcmQgbGluazogaHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWIyMDk4YmM0NDcyOGE0ZWZiM2U5Cj4gc3l6
IHJlcHJvOiAgICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9
MTI1MjZlNTg2MDAwMDAKPiBDIHJlcHJvZHVjZXI6ICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20veC9yZXByby5jP3g9MTYxNzg0ZjA2MDAwMDAKPiAKPiBSZXBvcnRlZC1ieTogc3l6Ym90
K2IyMDk4YmM0NDcyOGE0ZWZiM2U5QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiBGaXhlczog
MDRjZjMxYTc1OWVmICgiZnRyYWNlOiBNYWtlIGZ0cmFjZV9sb2NhdGlvbl9yYW5nZSgpIGdsb2Jh
bCIpCj4gCj4gRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBwcm9jZXNzIHNlZTogaHR0
cHM6Ly9nb28uZ2wvdHBzbUVKI2Jpc2VjdGlvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
