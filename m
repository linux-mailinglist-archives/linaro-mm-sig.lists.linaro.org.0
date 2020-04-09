Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5104B1A2E19
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 05:59:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 727E866626
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 03:59:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5C55366627; Thu,  9 Apr 2020 03:59:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FC966661F;
	Thu,  9 Apr 2020 03:58:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8443C664E3
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 03:58:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6924C6661F; Thu,  9 Apr 2020 03:58:30 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id E908C664E3
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 03:58:28 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id t28so9154379ott.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Apr 2020 20:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FsPlV7xUkpLV6nUKygfRWVpxvFWnNZfwGjmtdPoteHc=;
 b=TefLCPeNmxAPiowOCzm7hiciyME7+sLEMbna9kXd0wuCKbX1dFqh9pvgAVokhW8VJw
 Uk7uiu7+ynbN146xXKDpPuFQuGo9fNVTCgo+DHm28nCAY0vx2fea+DEdvZTdPnpXHH76
 6tj4XsGl586bcxgv0QuDB06s+CIPcWC/nZvuj7f/Vhksy9GXxrRCyDk43+tKHjuoqaxF
 HDBQ4kLUqqD4p8XGfW1KmzCJh0LwD5kVb2Jka/KbhivdoRdx/qNpp4CHiM3gt9MWpWsK
 prVLzmnZn02C7zy8+2X8bBER+1jL9iWIkkCBFlxj8t0I4YDNSxkapfVHtJOHhq0EjeXm
 rXIw==
X-Gm-Message-State: AGi0PuZkMoTQhIPp6+SSivNNeAqP9eSaR2bkZrhnHAaOMXVLN9HN8RRm
 BFqMxjD1oRx3O0z9aHeVG7K7Oox/zWzXdkxfcLyjfyF3
X-Google-Smtp-Source: APiQypJrcx9SA5Bho12teEGNq3eHBnpaPanCdIkscabOeWI4bgsl79g5jr8VaR+luOeX3P7CmHUb511K/67jy0H3QOY=
X-Received: by 2002:a05:6830:22d9:: with SMTP id
 q25mr7984877otc.164.1586404708132; 
 Wed, 08 Apr 2020 20:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200407133002.3486387-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200407133002.3486387-1-daniel.vetter@ffwll.ch>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 9 Apr 2020 09:28:16 +0530
Message-ID: <CAO_48GF5jM-L7bqnfvXSvbugAjYsYnE7rGokO7_LWQxHua0=wQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, Greg Hackmann <ghackmann@google.com>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, minchan@kernel.org,
 Jenhao Chen <jenhaochen@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Martin Liu <liumartin@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix SET_NAME ioctl uapi
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

VGhhbmtzIGZvciB0aGUgcGF0Y2gsIERhbmllbCEKCgpPbiBUdWUsIDcgQXByIDIwMjAgYXQgMTk6
MDAsIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gVGhl
IHVhcGkgaXMgdGhlIHNhbWUgb24gMzIgYW5kIDY0IGJpdCwgYnV0IHRoZSBudW1iZXIgaXNudC4g
RXZlcnlvbmUKPiB3aG8gYm90Y2hlZCB0aGlzIHBsZWFzZSByZS1yZWFkOgo+Cj4gaHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS40LXByZXByYy1jcHUvaW9jdGwvYm90Y2hpbmctdXAt
aW9jdGxzLmh0bWwKPgo+IEFsc28sIHRoZSB0eXBlIGFyZ3VtZW50IGZvciB0aGUgaW9jdGwgbWFj
cm9zIGlzIGZvciB0aGUgdHlwZSB0aGUgdm9pZAo+IF9fdXNlciAqYXJnIHBvaW50ZXIgcG9pbnRz
IGF0LCB3aGljaCBpbiB0aGlzIGNhc2Ugd291bGQgYmUgdGhlCj4gdmFyaWFibGUtc2l6ZWQgY2hh
cltdIG9mIGEgMCB0ZXJtaW5hdGVkIHN0cmluZy4gU28gdGhpcyB3YXMgYm90Y2hlZCBpbgo+IG1v
cmUgdGhhbiBqdXN0IHRoZSB1c3VhbCB3YXlzLgoKWWVzLCBpdCBzaG91bGRuJ3QgaGF2ZSBwYXNz
ZWQgdGhyb3VnaCB0aGUgY3JhY2tzOyBteSBhcG9sb2dpZXMhCgo+Cj4gQ2M6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IENoZW5ibyBGZW5nIDxmZW5nY0Bnb29n
bGUuY29tPgo+IENjOiBHcmVnIEhhY2ttYW5uIDxnaGFja21hbm5AZ29vZ2xlLmNvbT4KPiBDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IENj
OiBtaW5jaGFuQGtlcm5lbC5vcmcKPiBDYzogc3VyZW5iQGdvb2dsZS5jb20KPiBDYzogamVuaGFv
Y2hlbkBnb29nbGUuY29tCj4gQ2M6IE1hcnRpbiBMaXUgPGxpdW1hcnRpbkBnb29nbGUuY29tPgoK
TWFydGluLApDb3VsZCBJIHJlcXVlc3QgeW91IHRvIHRlc3QgdGhpcyBvbmUgd2l0aCB0aGUgNCBj
b21iaW5hdGlvbnMgb2YgMzItYml0Ci8gNjQtYml0IHVzZXJzcGFjZSBhbmQga2VybmVsLCBhbmQg
bGV0IHVzIGtub3cgdGhhdCBhbGwgNCBhcmUgd29ya2luZwphbHJpZ2h0PyBJZiB5ZXMsIHBsZWFz
ZSBjb25zaWRlciBnaXZpbmcgeW91ciB0ZXN0ZWQtYnkgaGVyZS4KCj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgICAgfCAzICsrLQo+ICBpbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1
Zi5oIHwgNCArKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBpbmRleCA1NzBjOTIzMDIzZTYuLjFkOTIzYjhlNGM1OSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYwo+IEBAIC0zODgsNyArMzg4LDggQEAgc3RhdGljIGxvbmcgZG1hX2J1
Zl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwKPgo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+Cj4gLSAgICAgICBjYXNlIERNQV9CVUZfU0VUX05BTUU6Cj4gKyAgICAgICBjYXNlIERNQV9C
VUZfU0VUX05BTUVfQToKPiArICAgICAgIGNhc2UgRE1BX0JVRl9TRVRfTkFNRV9COgo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gZG1hX2J1Zl9zZXRfbmFtZShkbWFidWYsIChjb25zdCBjaGFyIF9f
dXNlciAqKWFyZyk7Cj4KPiAgICAgICAgIGRlZmF1bHQ6Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWFwaS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCj4gaW5k
ZXggZGJjNzA5MmUwNGI1Li4yMWRmYWM4MTVkYzAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBp
L2xpbnV4L2RtYS1idWYuaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgKPiBA
QCAtMzksNiArMzksMTAgQEAgc3RydWN0IGRtYV9idWZfc3luYyB7Cj4KPiAgI2RlZmluZSBETUFf
QlVGX0JBU0UgICAgICAgICAgICdiJwo+ICAjZGVmaW5lIERNQV9CVUZfSU9DVExfU1lOQyAgICAg
X0lPVyhETUFfQlVGX0JBU0UsIDAsIHN0cnVjdCBkbWFfYnVmX3N5bmMpCj4gKy8qIDMyLzY0Yml0
bmVzcyBvZiB0aGlzIHVhcGkgd2FzIGJvdGNoZWQgaW4gYW5kcm9pZCwgdGhlcmUncyBubyBkaWZm
ZXJlbmNlCj4gKyAqIGJldHdlZW4gdGhlbSBpbiBhY3R1YWwgdWFwaSwgdGhleSdyZSBqdXN0IGRp
ZmZlcmVudCBudW1iZXJzLiAqLwo+ICAjZGVmaW5lIERNQV9CVUZfU0VUX05BTUUgICAgICAgX0lP
VyhETUFfQlVGX0JBU0UsIDEsIGNvbnN0IGNoYXIgKikKPiArI2RlZmluZSBETUFfQlVGX1NFVF9O
QU1FX0EgICAgIF9JT1coRE1BX0JVRl9CQVNFLCAxLCB1MzIpCj4gKyNkZWZpbmUgRE1BX0JVRl9T
RVRfTkFNRV9CICAgICBfSU9XKERNQV9CVUZfQkFTRSwgMSwgdTY0KQo+Cj4gICNlbmRpZgo+IC0t
Cj4gMi4yNS4xCj4KQmVzdCwKU3VtaXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
