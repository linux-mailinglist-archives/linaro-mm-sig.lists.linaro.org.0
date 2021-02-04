Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2924E30FDFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 21:20:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43EB060197
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 20:20:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3868060639; Thu,  4 Feb 2021 20:20:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F0436087D;
	Thu,  4 Feb 2021 20:20:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 24FE960197
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:20:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F6456087D; Thu,  4 Feb 2021 20:20:11 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by lists.linaro.org (Postfix) with ESMTPS id 4B20A60197
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:20:09 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id h6so5085324oie.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 12:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wpgT6Yz8SEv8X0iAsr6guPodAvl5pFjIWmhOvi/hibA=;
 b=YKYH87q5RKiBDoCVGfBn7SNnPZH5Z4iWH89uxAEYzKkByumV98rrKPqDN38pteAU8H
 Lo197ilxEjvLsAL0sVqcoF+optXcxTZqcec4DU9mIYW7rN2aVZgmK5k+e0+aWiA+SVMc
 KY+2GlaaLfGRRzX9FoXQPVYiRxKW8E7qxqqpmZ5mFPKfZVwt1cDRIFf+pfq2m5o4q9td
 nBs9a/TTcizVX2ZX7sZtcGHHgF8CA3vBhyFOwTCRmF93MOTHy4LWV6/91Q8FFmKHNAxk
 tlhoVLtBvBEhT/VKHtaiM6uLFqEDfOwe95Vq6cWBmG2o0lvBmAeJa6R7G1sZaLkvrMID
 rZXQ==
X-Gm-Message-State: AOAM530zInsti3RiesVRDhXKKwOZbdIkgFISWjBHFtR/oxvCCruUE+KV
 sppszi2lroTq9tSsl8cALKkFJoWp2/AcMwRiknXIpA==
X-Google-Smtp-Source: ABdhPJx/eLdhIzXnP9kqJ04S5q7V3UVm0UNcMndwh3kT46QCp6BCgQGHr/UZJ84rtpMCXuoIRTD3gtusKXypuS6WNDw=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr845032oia.14.1612470008816; 
 Thu, 04 Feb 2021 12:20:08 -0800 (PST)
MIME-Version: 1.0
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
 <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
 <20210204200918.GA4718@ziepe.ca>
In-Reply-To: <20210204200918.GA4718@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 4 Feb 2021 21:19:57 +0100
Message-ID: <CAKMK7uEU_TJEUF2go6WRuVn+=-DSD5kRw1beJhC_1Y4HTXbYVQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Require VM_SPECIAL vma
	for mmap
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

T24gVGh1LCBGZWIgNCwgMjAyMSBhdCA5OjA5IFBNIEphc29uIEd1bnRob3JwZSA8amdnQHppZXBl
LmNhPiB3cm90ZToKPgo+IE9uIFRodSwgRmViIDA0LCAyMDIxIGF0IDA4OjU5OjU5UE0gKzAxMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4KPiA+IFNvIEkgdGhpbmsganVzdCBjaGVja2luZyBmb3Ig
Vk1fUEZOTUFQIGFmdGVyIHRoZSB2bWEgaXMgc2V0IHVwIHNob3VsZAo+ID4gYmUgZW5vdWdoIHRv
IGd1YXJhbnRlZSB3ZSdsbCBvbmx5IGhhdmUgcHRlX3NwZWNpYWwgcHRlcyBpbiB0aGVyZSwKPiA+
IGV2ZXIuIEJ1dCBJJ20gbm90IHN1cmUsIHRoaXMgc3R1ZmYgYWxsIGlzbid0IHJlYWxseSBkb2N1
bWVudGVkIG11Y2gKPiA+IGFuZCB0aGUgY29kZSBpcyBzb21ldGltZXMgYSBtYXplICh0byBtZSBh
dCBsZWFzdCkuCj4KPiBZZXMsIHRoYXQgbWFrZXMgc2Vuc2UuIFZNX1BGTk1BUCBhbmQgIVZNX01J
WEVETUFQIHNlZW1zIGxpa2UgdGhlIHJpZ2h0Cj4gY2hlY2sgYWZ0ZXIgdGhlIFZNQSBpcyBwb3B1
bGF0ZWQKPgo+IEJ1dCBob3cgZG8geW91IHN0dWZmIHNwZWNpYWwgcGZucyBpbnRvIGEgVk1BIG91
dHNpZGUgdGhlIGZhdWx0Cj4gaGFuZGxlcj8KCk1hbnkgZHJpdmVycyB3ZSBoYXZlIGRvbid0IGhh
dmUgZHluYW1pYyBidWZmZXIgbWFuYWdlbWVudCAoa2luZGEKb3ZlcmtpbGwgZm9yIGEgZmV3IGZy
YW1lYnVmZmVycyBvbiBhIGRpc3BsYXktb25seSBJUCBibG9jayksIHNvIHRoZQpqdXN0IHJlbWFw
X3Bmbl9yYW5nZSBvbiAtPm1tYXAsIGFuZCBkb24ndCBoYXZlIGEgZmF1bHQgaGFuZGxlciBhdCBh
bGwuCgpPciBJJ20gbm90IHVuZGVyc3RhbmRpbmcgd2hhdCB5b3UncmUgYXNraW5nPwotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
