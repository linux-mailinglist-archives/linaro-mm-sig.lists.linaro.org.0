Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA2730D131
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 03:03:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EE67617F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:03:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 411FC619D7; Wed,  3 Feb 2021 02:03:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DCD16601F;
	Wed,  3 Feb 2021 02:02:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 88513617F5
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:02:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 792B5665C3; Wed,  3 Feb 2021 02:02:43 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 896BC617F5
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:02:14 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id 7so22463399wrz.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 18:02:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k1d6YTsPbefNP98n7kugOKyTm/5Jjwmgp6qDjgryobQ=;
 b=qEWhwHFPgNqS1L5RmXYoD8swWifxk4yXlGobWUCF9iPukj0MfZuWE/hjLtmAtuRaFX
 b2ALYybODzRs6nieg/BD1FwHTyZZmv67U+plEkZ32NN0+kbrh38X8xJRO3SKJPWlsmfK
 SW7u62l1StttWzh1XGExTTqgmMUkWO6pSeU5synwbIcLZyblfRZJWuiV2MdH7ticglyN
 eSzq7LOVRkHed513P8M6zYLiaJW4r7VX5nvDSGLRxYQh0yh+MHgNN0C4ownG5rYiIR2m
 T8AxbozGuojkl5m9OscuuKOZuoLMsb6HAw4j9oE/ztur+8FG7H8xfU6bBMyXMHK0E3GM
 rWKA==
X-Gm-Message-State: AOAM531fxhNQtuNb/qQdlyFlG2kf96Oi0Z9pzbdoniHduex0UO6QlMtl
 9enBx2KmvN0PhlYH1hm5KJIawQydj597YCLED4NBnQ==
X-Google-Smtp-Source: ABdhPJyQn6YddfkLVWiIGgY37mm6xAPU8tZAWB5sXAvWUT2z2eLAGdHnF+0pzujgGtm+uL0SK+Mb5ISJFicsxp8PRdg=
X-Received: by 2002:adf:e50e:: with SMTP id j14mr860530wrm.162.1612317733369; 
 Tue, 02 Feb 2021 18:02:13 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203003134.2422308-2-surenb@google.com>
 <YBn+yWIE9eXbgQ2K@google.com>
In-Reply-To: <YBn+yWIE9eXbgQ2K@google.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Feb 2021 18:02:01 -0800
Message-ID: <CAJuCfpHCCD6ruxQAZP8pTZxz44F7pDKY59QznxFv0nQ+-9VaQA@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA1OjM5IFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMDQ6MzE6MzRQTSAtMDgw
MCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOgo+ID4gQ3VycmVudGx5IHN5c3RlbSBoZWFwIG1h
cHMgaXRzIGJ1ZmZlcnMgd2l0aCBWTV9QRk5NQVAgZmxhZyB1c2luZwo+ID4gcmVtYXBfcGZuX3Jh
bmdlLiBUaGlzIHJlc3VsdHMgaW4gc3VjaCBidWZmZXJzIG5vdCBiZWluZyBhY2NvdW50ZWQKPiA+
IGZvciBpbiBQU1MgY2FsY3VsYXRpb25zIGJlY2F1c2Ugdm0gdHJlYXRzIHRoaXMgbWVtb3J5IGFz
IGhhdmluZyBubwo+ID4gcGFnZSBzdHJ1Y3RzLiBXaXRob3V0IHBhZ2Ugc3RydWN0cyB0aGVyZSBh
cmUgbm8gY291bnRlcnMgcmVwcmVzZW50aW5nCj4gPiBob3cgbWFueSBwcm9jZXNzZXMgYXJlIG1h
cHBpbmcgYSBwYWdlIGFuZCB0aGVyZWZvcmUgUFNTIGNhbGN1bGF0aW9uCj4gPiBpcyBpbXBvc3Np
YmxlLgo+ID4gSGlzdG9yaWNhbGx5LCBJT04gZHJpdmVyIHVzZWQgdG8gbWFwIGl0cyBidWZmZXJz
IGFzIFZNX1BGTk1BUCBhcmVhcwo+ID4gZHVlIHRvIG1lbW9yeSBjYXJ2ZW91dHMgdGhhdCBkaWQg
bm90IGhhdmUgcGFnZSBzdHJ1Y3RzIFsxXS4gVGhhdAo+ID4gaXMgbm90IHRoZSBjYXNlIGFueW1v
cmUgYW5kIGl0IHNlZW1zIHRoZXJlIHdhcyBkZXNpcmUgdG8gbW92ZSBhd2F5Cj4gPiBmcm9tIHJl
bWFwX3Bmbl9yYW5nZSBbMl0uCj4gPiBEbWFidWYgc3lzdGVtIGhlYXAgZGVzaWduIGluaGVyaXRz
IHRoaXMgSU9OIGJlaGF2aW9yIGFuZCBtYXBzIGl0cwo+ID4gcGFnZXMgdXNpbmcgcmVtYXBfcGZu
X3JhbmdlIGV2ZW4gdGhvdWdoIGFsbG9jYXRlZCBwYWdlcyBhcmUgYmFja2VkCj4gPiBieSBwYWdl
IHN0cnVjdHMuCj4gPiBSZXBsYWNlIHJlbWFwX3Bmbl9yYW5nZSB3aXRoIHZtX2luc2VydF9wYWdl
LCBmb2xsb3dpbmcgTGF1cmEncyBzdWdnZXN0aW9uCj4gPiBpbiBbMV0uIFRoaXMgd291bGQgYWxs
b3cgY29ycmVjdCBQU1MgY2FsY3VsYXRpb24gZm9yIGRtYWJ1ZnMuCj4gPgo+ID4gWzFdIGh0dHBz
Oi8vZHJpdmVyZGV2LWRldmVsLmxpbnV4ZHJpdmVycHJvamVjdC5uYXJraXZlLmNvbS92MGZKR3Bh
RC91c2luZy1pb24tbWVtb3J5LWZvci1kaXJlY3QtaW8KPiA+IFsyXSBodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9j
dG9iZXIvMTI3NTE5Lmh0bWwKPiA+IChzb3JyeSwgY291bGQgbm90IGZpbmQgbG9yZSBsaW5rcyBm
b3IgdGhlc2UgZGlzY3Vzc2lvbnMpCj4gPgo+ID4gU3VnZ2VzdGVkLWJ5OiBMYXVyYSBBYmJvdHQg
PGxhYmJvdHRAa2VybmVsLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IFN1cmVuIEJhZ2hkYXNhcnlh
biA8c3VyZW5iQGdvb2dsZS5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFu
QGtlcm5lbC5vcmc+Cj4KPiBBIG5vdGU6IFRoaXMgcGF0Y2ggbWFrZXMgZG1hYnVmIHN5c3RlbSBo
ZWFwIGFjY291bnRlZCBhcyBQU1Mgc28KPiBpZiBzb21lb25lIGhhcyByZWxpZXMgb24gdGhlIHNp
emUsIHRoZXkgd2lsbCBzZWUgdGhlIGJsb2F0Lgo+IElJUkMsIHRoZXJlIHdhcyBzb21lIGRlYmF0
ZSB3aGV0aGVyIFBTUyBhY2NvdW50aW5nIGZvciB0aGVpcgo+IGJ1ZmZlciBpcyBjb3JyZWN0IG9y
IG5vdC4gSWYgaXQnZCBiZSBhIHByb2JsZW0sIHdlIG5lZWQgdG8KPiBkaXNjdXNzIGhvdyB0byBz
b2x2ZSBpdChtYXliZSwgdm1hLT52bV9mbGFncyBhbmQgcmVpbnRyb2R1Y2UKPiByZW1hcF9wZm5f
cmFuZ2UgZm9yIHRoZW0gdG8gYmUgcmVzcGVjdGVkKS4KCkkgZGlkIG5vdCBzZWUgZGViYXRlcyBh
Ym91dCBub3QgaW5jbHVkaW5nICptYXBwZWQqIGRtYWJ1ZnMgaW50byBQU1MKY2FsY3VsYXRpb24u
IEkgcmVtZW1iZXIgcGVvcGxlIHdlcmUgZGlzY3Vzc2luZyBob3cgdG8gYWNjb3VudCBkbWFidWZz
CnJlZmVycmVkIG9ubHkgYnkgdGhlIEZEIGJ1dCB0aGF0IGlzIGEgZGlmZmVyZW50IGRpc2N1c3Np
b24uIElmIHRoZQpidWZmZXIgaXMgbWFwcGVkIGludG8gdGhlIGFkZHJlc3Mgc3BhY2Ugb2YgYSBw
cm9jZXNzIHRoZW4gSU1ITwppbmNsdWRpbmcgaXQgaW50byBQU1Mgb2YgdGhhdCBwcm9jZXNzIGlz
IG5vdCBjb250cm92ZXJzaWFsLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
