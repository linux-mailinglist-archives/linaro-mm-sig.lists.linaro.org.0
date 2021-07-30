Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D443DC002
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jul 2021 22:47:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A70263567
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jul 2021 20:47:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0569A63511; Fri, 30 Jul 2021 20:47:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA6D660B01;
	Fri, 30 Jul 2021 20:47:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 81AF860728
 for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jul 2021 20:47:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7DFE460B01; Fri, 30 Jul 2021 20:47:26 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by lists.linaro.org (Postfix) with ESMTPS id 7540860728
 for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jul 2021 20:47:24 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id j77so16059183ybj.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jul 2021 13:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/0jhFaIN74qXsSiikohXu8cl1HOkpOoIv692ywasfb4=;
 b=f5K+q+/Oav1k+ND8XrBFrsylqIwwScjanXzx54x+wWsM1L30VD11ldf0yyGhC6g7KY
 DkQgH6qE9CkgcEjm6N3PPIKFeHC51RjCMNgjyCK/Ku+wzxIs2V8vvlseAhpSTeH2FyQh
 FwdDA+Xe5Iv+cqI/5Vz1svm6MMJWWO1MlXmmhFOVpuVQSBvop2X4AiHx9Nx5TO2JzdOv
 X2p1LiNz4owqBu0jMURSKY8F5ohal27/DFW7J839MGvrGXWNDKKBqiE5SY0SdNQnxmIC
 ugOf4UlvuhnYk10moYg/rK2MR5989RxMz4VkdYixaorPPCX435aCyGqionTt7tHiylWv
 9XZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/0jhFaIN74qXsSiikohXu8cl1HOkpOoIv692ywasfb4=;
 b=UJaycdR4QOOwECLIRAqmDQ7+o3RIdEXkQUX7WN3wcT118SXq1izkv82b9bDODx9d01
 En0sSJQhkU4CNEmPz0Yxq/qNrbWQbGNh/KSIW03dEPIocHYbHJXU0NOFKdBtpC9w6xXC
 ajZ86zYsmLuW5g+vMzNkucuzfNQN1ENLCXmawWzN9akf8b8ztvpE86mUshIHxTa8OAkQ
 T6Bomn3Mw7WiOtR88bGvEbfh9ebiFhOTTVA/BvHe4eGpnt2sN/ZgC8N/VQIR4QHjiKCq
 f40KkVhzEaIjwjHciMWgrNVowBzS0nzJsnSlHe1Gy+hCeKnVBDJ4WL2esvsagNtHp0VN
 7Y2A==
X-Gm-Message-State: AOAM532fq8h0fpb3AK2eeqnGXtVIHh86mKVZsy8hPi76PW2NZzKxzcT9
 ClgWWW86hzpliBzqDPjRpGWLjz3TmzXD/i12joY5dw==
X-Google-Smtp-Source: ABdhPJx/oaMRUi+rJ7Z7rv6fnGibfQ0yMvYpuQi7W+qHjbMi+UQmXv0MyKu1dcrOKPeHXBs23Hd2JO/NCMi+ib63UCE=
X-Received: by 2002:a25:2155:: with SMTP id h82mr5794127ybh.177.1627678043828; 
 Fri, 30 Jul 2021 13:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210729070330.41443-1-christian.koenig@amd.com>
 <20210729070330.41443-3-christian.koenig@amd.com>
 <YQJXi2JNZdH5DaR2@phenom.ffwll.local>
 <CALAqxLVN7RVz3+z1ZvkRHeb2=Y4KbpbTOw-8St0D+Lzt5U-cFw@mail.gmail.com>
In-Reply-To: <CALAqxLVN7RVz3+z1ZvkRHeb2=Y4KbpbTOw-8St0D+Lzt5U-cFw@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 30 Jul 2021 13:46:48 -0700
Message-ID: <CA+wgaPNVp4ci1otArWNA1k+TGdHYgwz-ObWR0M8YO5j+gCfmQQ@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 3/3] dma-buf: nuke SW_SYNC debugfs files
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBKdWwgMjksIDIwMjEgYXQgOTo1MiBQTSBKb2huIFN0dWx0eiA8am9obi5zdHVsdHpA
bGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEp1bCAyOSwgMjAyMSBhdCAxMjoyNCBBTSBE
YW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgSnVs
IDI5LCAyMDIxIGF0IDA5OjAzOjMwQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4g
PiA+IEFzIHdlIG5vdyBrbmV3IGNvbnRyb2xsaW5nIGRtYV9mZW5jZSBzeW5jaHJvbml6YXRpb24g
ZnJvbSB1c2Vyc3BhY2UgaXMKPiA+ID4gZXh0cmVtZWx5IGRhbmdlcm91cyBhbmQgY2FuIG5vdCBv
bmx5IGRlYWRsb2NrIGRyaXZlcnMgYnV0IHRyaXZpYWxseSBhbHNvIHRoZQo+ID4gPiB3aG9sZSBr
ZXJuZWwgbWVtb3J5IG1hbmFnZW1lbnQuCj4gPiA+Cj4gPiA+IEVudGlyZWx5IHJlbW92ZSB0aGlz
IG9wdGlvbi4gV2Ugbm93IGhhdmUgaW4ga2VybmVsIHVuaXQgdGVzdHMgdG8gZXhlcmNpc2UgdGhl
Cj4gPiA+IGRtYV9mZW5jZSBmcmFtZXdvcmsgYW5kIGl0J3MgY29udGFpbmVycy4KPiA+ID4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgo+ID4KPiA+IFRoZXJlJ3MgYWxzbyBpZ3RzIGZvciB0aGlzLCBhbmQgQW5kcm9pZCBoZWF2
aWx5IHVzZXMgdGhpcy4gU28gSSdtIG5vdCBzdXJlCj4gPiB3ZSBjYW4ganVzdCBudWtlIGl0Lgo+
Cj4gRWVlZWguLi4gSSBkb24ndCB0aGluayB0aGF0J3MgYWN0dWFsbHkgdGhlIGNhc2UgYW55bW9y
ZS4gQXMgb2YKPiBhbmRyb2lkMTItNS4xMCBDT05GSUdfU1dfU1lOQyBpcyBub3QgdHVybmVkIG9u
Lgo+IEZ1cnRoZXIsIEFuZHJvaWQgaXMgZGlzYWJsaW5nIGRlYnVnZnMgaW4gdGhlaXIga2VybmVs
cyBhcyBpdCBleHBvc2VzCj4gdG9vIG11Y2ggdG8gdXNlcmxhbmQuCj4KPiBUaGF0IHNhaWQsIHRo
ZXJlIHN0aWxsIGFyZSBzb21lIHJlZmVyZW5jZXMgdG8gaXQ6Cj4gICBodHRwczovL2NzLmFuZHJv
aWQuY29tL2FuZHJvaWQvcGxhdGZvcm0vc3VwZXJwcm9qZWN0LysvbWFzdGVyOnN5c3RlbS9jb3Jl
L2xpYnN5bmMvc3luYy5jO2w9NDE2CgpIZWxsbywKCkxpa2UgSm9obiBtZW50aW9uZWQsIENPTkZJ
R19TV19TWU5DIGlzIG5vdCB0dXJuZWQgb24gZm9yIHRoZSAqLTUuNCBhbmQKbmV3ZXIgYnJhbmNo
ZXMgaW4gdGhlIEFuZHJvaWQgQ29tbW9uIEtlcm5lbC4gVGhlIHJlZmVyZW5jZXMgaW4gQU9TUAph
cmUgb25seSBpbiBwbGFjZSB0byBzdXBwb3J0IGRldmljZXMgd2l0aCBvbGRlciBrZXJuZWxzIHVw
Z3JhZGluZyB0bwpuZXdlciBBbmRyb2lkIHZlcnNpb25zLgoKUmVnYXJkcywKSHJpZHlhCgo+Cj4g
QnV0IGl0IGxvb2tzIGxpa2UgdGhlIGFjdHVhbCB1c2VycyBhcmUgb25seSBrc2VsZnRlc3QgYW5k
IGlndD8KPgo+IEFkZGluZyBBbGlzdGFpciwgSHJpZHlhIGFuZCBTYW5kZWVwIGluIGNhc2UgdGhl
eSBoYXZlIG1vcmUgY29udGV4dC4KPgo+IHRoYW5rcwo+IC1qb2huCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
