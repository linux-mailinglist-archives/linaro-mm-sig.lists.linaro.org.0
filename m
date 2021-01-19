Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8432FC126
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jan 2021 21:37:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2969761831
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jan 2021 20:37:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1D7846672F; Tue, 19 Jan 2021 20:37:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F78061820;
	Tue, 19 Jan 2021 20:36:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 562CC6066C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 20:36:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 35C6161820; Tue, 19 Jan 2021 20:36:46 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by lists.linaro.org (Postfix) with ESMTPS id 97DF26066C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 20:36:44 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id g3so11224208plp.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 12:36:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=B8V4SvilY22Ou2CtEY4Ue8qbjrsp3tthnLCK+7Q59QY=;
 b=sse3B1qy58Zn4O8dm+gXZLuXuhJyHY2bi/k8FLYNwR3YTL/IrJDRUcRxopbhby68kE
 VIxSnLniMnq9TspQsQEozCbRrOuRTJ7JH3X2k3bLvUSAhzNEtFVhZATZ1FaaOszQfeAs
 PCmi4jJRXhbX5UP8q/AhD/x7rhW7CvDSDQtoAscMuEk/KnkpK6BmB+SLPHGqRRnDeh8N
 /uIuIkHDwTQl6S4r+vF4qRP+NhoH2egPXabQ+PLM+U1VARECerfJBix82pcTsrb3a0cI
 jas+MVE7qp7OFrEG8s/fQmyEq19NJTcv/JHg0gayfsXSp93OWVbHQG6SXthY/9o4RdGF
 fuYA==
X-Gm-Message-State: AOAM530K+6t7evOhRZA+FkekRJIw9UzSj41CpQKpE6L5kyPbzTpQf8px
 z4nImLKm9xwQIfRo4ZHgDnw=
X-Google-Smtp-Source: ABdhPJxMgNFUumt9XiceexCYO3QOZQGhZnpeiTmcQUHGdDtv9MMjBRezO5wS52FU++T2/s/pwxcgsg==
X-Received: by 2002:a17:902:d909:b029:df:52b4:8147 with SMTP id
 c9-20020a170902d909b02900df52b48147mr1944220plz.33.1611088603852; 
 Tue, 19 Jan 2021 12:36:43 -0800 (PST)
Received: from google.com ([2620:15c:211:201:8d1f:e7:cd3c:db2f])
 by smtp.gmail.com with ESMTPSA id b67sm1171pfa.140.2021.01.19.12.36.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Jan 2021 12:36:42 -0800 (PST)
Date: Tue, 19 Jan 2021 12:36:40 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <YAdC2J4x/4J9ozkq@google.com>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-5-minchan@kernel.org>
 <CALAqxLWPT8PWYue0h1863NjNxKn_FH0DtoRtArpmmxZ1Ve5xCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLWPT8PWYue0h1863NjNxKn_FH0DtoRtArpmmxZ1Ve5xCw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michal Hocko <mhocko@suse.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

T24gVHVlLCBKYW4gMTksIDIwMjEgYXQgMTA6Mjk6MjlBTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgNToyMiBQTSBNaW5jaGFuIEtpbSA8bWluY2hh
bkBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBIeWVzb28gWXUgPGh5ZXNvby55dUBz
YW1zdW5nLmNvbT4KPiA+Cj4gPiBUaGlzIHBhdGNoIHN1cHBvcnRzIGNodW5rIGhlYXAgdGhhdCBh
bGxvY2F0ZXMgdGhlIGJ1ZmZlcnMgdGhhdAo+ID4gYXJyYW5nZWQgaW50byBhIGxpc3QgYSBmaXhl
ZCBzaXplIGNodW5rcyB0YWtlbiBmcm9tIENNQS4KPiA+Cj4gPiBUaGUgY2h1bmsgaGVhcCBkcml2
ZXIgaXMgYm91bmQgZGlyZWN0bHkgdG8gYSByZXNlcnZlZF9tZW1vcnkKPiA+IG5vZGUgYnkgZm9s
bG93aW5nIFJvYiBIZXJyaW5nJ3Mgc3VnZ2VzdGlvbiBpbiBbMV0uCj4gPgo+ID4gWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTEwMjUyMjUwMDkuNTAzMDUtMi1qb2huLnN0dWx0
ekBsaW5hcm8ub3JnL1QvI20zZGM2M2FjZDMzZmVhMjY5YTU4NGY0M2JiNzk5YTg3NmYwYjJiNDVk
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4K
PiA+IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gPiAt
LS0KPiAuLi4KPiA+ICtzdGF0aWMgaW50IHJlZ2lzdGVyX2NodW5rX2hlYXAoc3RydWN0IGNodW5r
X2hlYXAgKmNodW5rX2hlYXBfaW5mbykKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBkbWFfaGVh
cF9leHBvcnRfaW5mbyBleHBfaW5mbzsKPiA+ICsKPiA+ICsgICAgICAgZXhwX2luZm8ubmFtZSA9
IGNtYV9nZXRfbmFtZShjaHVua19oZWFwX2luZm8tPmNtYSk7Cj4gCj4gT25lIHBvdGVudGlhbCBp
c3N1ZSBoZXJlLCB5b3UncmUgc2V0dGluZyB0aGUgbmFtZSB0byB0aGUgc2FtZSBhcyB0aGUKPiBD
TUEgbmFtZS4gU2luY2UgdGhlIENNQSBoZWFwIHVzZXMgdGhlIENNQSBuYW1lLCBpZiBvbmUgY2h1
bmsgd2FzCj4gcmVnaXN0ZXJlZCBhcyBhIGNodW5rIGhlYXAgYnV0IGFsc28gd2FzIHRoZSBkZWZh
dWx0IENNQSBhcmVhLCBpdCBtaWdodAo+IGJlIHJlZ2lzdGVyZWQgdHdpY2UuIEJ1dCBzaW5jZSBi
b3RoIHdvdWxkIGhhdmUgdGhlIHNhbWUgbmFtZSBpdCB3b3VsZAo+IGJlIGFuIGluaXRpYWxpemF0
aW9uIHJhY2UgYXMgdG8gd2hpY2ggb25lICJ3aW5zIi4KCkdvb2QgcG9pbnQuIE1heWJlIHNvbWVv
bmUgbWlnaHQgd2FudCB0byB1c2UgZGVmYXVsdCBDTUEgYXJlYSBmb3IKYm90aCBjbWFfaGVhcCBh
bmQgY2h1bmtfaGVhcC4gSSBjYW5ub3QgY29tZSB1cCB3aXRoIGlkZWFzIHdoeSB3ZQpzaG91bGQg
cHJvaGliaXQgaXQgYXRtLgoKPiAKPiBTbyBtYXliZSBjb3VsZCB5b3UgcG9zdGZpeCB0aGUgQ01B
IG5hbWUgd2l0aCAiLWNodW5rIiBvciBzb21ldGhpbmc/CgpIeWVzb28sIEFueSBvcGluaW9uPwpV
bmxlc3MgeW91IGhhdmUgc29tZXRoaW5nIG90aGVyIGlkZWEsIGxldCdzIGZpeCBpdCBpbiBuZXh0
IHZlcnNpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
