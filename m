Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B52CB15A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 01:13:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADF6965F83
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 00:13:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A33BD66539; Wed,  2 Dec 2020 00:13:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 973EE65FD7;
	Wed,  2 Dec 2020 00:13:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C38A760BE0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 00:13:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A687665FD7; Wed,  2 Dec 2020 00:13:07 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 8E35B60BE0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 00:13:06 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id r20so99509pjp.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 16:13:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=ONvzCRbnsYs7DyFpSE5/MjQxVHqRBL0P/7tzKwkfWHM=;
 b=dMFsuzi5mWY1iIDNrv4KVrgClcp+yK2qGvjBAi/bRjyE6icvea6DZdn/9pezFTO72K
 wodLC2Z9a0+wq6FF/rCV657go+cAtQ1wsUTmOnT5THVwgr14RUwrxvkvn/hLl7njDTnE
 WVS3bacY/2L85WhEAIpgFPGnUEMHBnBvtzHArHEc8RClfm+Js1OT2WeMzDI1Nlcix8T/
 fJnaQN2PJzH0EcAf1g+tYROgxY93J6Z+6eBzGRhCw+9ZFVlrfBoAyBrx2QAddiKmtDDh
 zBMWUjlzYORxp6nSQM2FWNWiiEJY7kl4eYC1eJowQ1pR68+nwOWf2pwgRFZStwwDnice
 3Wyw==
X-Gm-Message-State: AOAM531DrBdLHWUQhX8HGQow5zVbHeXDATdTf0NzgGMTaqpfVLt6xxt9
 TOJyjCrd0+Gc9ptKJgdNdEQ=
X-Google-Smtp-Source: ABdhPJzfhvKOHUX0TmDshT7Dzgz6t3wuG9IeBh/Zj3+Xrv32k6DiXQkpXW7YoGi9chl88ciqE1pvdw==
X-Received: by 2002:a17:902:14b:b029:da:b499:25c7 with SMTP id
 69-20020a170902014bb02900dab49925c7mr55515plb.80.1606867985675; 
 Tue, 01 Dec 2020 16:13:05 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id a14sm59066pgv.42.2020.12.01.16.13.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 16:13:04 -0800 (PST)
Date: Tue, 1 Dec 2020 16:13:02 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20201202001302.GB3968963@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
 <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
 <20201201225554.GA3968963@google.com>
 <CALAqxLW-n4-VSd9dj=KXS4WRDrPmKOShAwP9tCfCZnk+4kxW-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLW-n4-VSd9dj=KXS4WRDrPmKOShAwP9tCfCZnk+4kxW-w@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] dma-buf: heaps: add chunk heap
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

T24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMDM6Mzg6MTRQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVHVlLCBEZWMgMSwgMjAyMCBhdCAyOjU1IFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFu
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gT24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMTE6NDg6MTVB
TSAtMDgwMCwgSm9obiBTdHVsdHogd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgRGVjIDEsIDIwMjAgYXQg
OTo1MSBBTSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+
ID4gVGhhbmtzIGZvciByZXdvcmtpbmcgYW5kIHJlc2VuZGluZyB0aGlzIQo+ID4gPgo+ID4gPiAu
Li4KPiA+ID4gPiArc3RhdGljIGludCBfX2luaXQgY2h1bmtfaGVhcF9pbml0KHZvaWQpCj4gPiA+
ID4gK3sKPiA+ID4gPiArICAgICAgIHN0cnVjdCBjbWEgKmRlZmF1bHRfY21hID0gZGV2X2dldF9j
bWFfYXJlYShOVUxMKTsKPiA+ID4gPiArICAgICAgIHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5m
byBleHBfaW5mbzsKPiA+ID4gPiArICAgICAgIHN0cnVjdCBjaHVua19oZWFwICpjaHVua19oZWFw
Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGlmICghZGVmYXVsdF9jbWEpCj4gPiA+ID4gKyAg
ICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGNodW5rX2hl
YXAgPSBremFsbG9jKHNpemVvZigqY2h1bmtfaGVhcCksIEdGUF9LRVJORUwpOwo+ID4gPiA+ICsg
ICAgICAgaWYgKCFjaHVua19oZWFwKQo+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVO
T01FTTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICBjaHVua19oZWFwLT5vcmRlciA9IENIVU5L
X0hFQVBfT1JERVI7Cj4gPiA+ID4gKyAgICAgICBjaHVua19oZWFwLT5jbWEgPSBkZWZhdWx0X2Nt
YTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICBleHBfaW5mby5uYW1lID0gY21hX2dldF9uYW1l
KGRlZmF1bHRfY21hKTsKPiA+ID4KPiA+ID4gU28sIHRoaXMgd291bGQgY3JlYXRlIGEgY2h1bmsg
aGVhcCBuYW1lIHdpdGggdGhlIGRlZmF1bHQgQ01BIG5hbWUsCj4gPiA+IHdoaWNoIHdvdWxkIGJl
IGluZGlzdGluZ3Vpc2hhYmxlIGZyb20gdGhlIGhlYXAgbmFtZSB1c2VkIGZvciB0aGUgcGxhaW4K
PiA+ID4gQ01BIGhlYXAuCj4gPiA+Cj4gPiA+IFByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIHByZWZp
eCBpdCB3aXRoICJjaHVuay0iIHNvIHRoZSBoZWFwIGRldmljZQo+ID4gPiBuYW1lcyBhcmUgdW5p
cXVlPwo+ID4KPiA+IFRoYXQgd2lsbCBnaXZlIGFuIGltcHJlc3Npb24gdG8gdXNlciB0aGF0IHRo
ZXkgYXJlIHVzaW5nIGRpZmZlcmVudCBDTUEKPiA+IGFyZWEgYnV0IHRoYXQncyBub3QgdHJ1ZS4g
SU1ITywgbGV0J3MgYmUgaG9uZXN0IGF0IHRoaXMgbW9tZW50Lgo+IAo+IEkgZGlzYWdyZWUuICBU
aGUgZG1hYnVmIGhlYXBzIHByb3ZpZGUgYW4gYWJzdHJhY3Rpb24gZm9yIGFsbG9jYXRpbmcgYQo+
IHR5cGUgb2YgbWVtb3J5LCBhbmQgd2hpbGUgeW91ciBoZWFwIGlzIHB1bGxpbmcgZnJvbSBDTUEs
IHlvdSBhcmVuJ3QKPiAianVzdCIgYWxsb2NhdGluZyBDTUEgYXMgdGhlIGV4aXN0aW5nIENNQSBo
ZWFwIHdvdWxkIHN1ZmZpY2UgZm9yIHRoYXQuCj4gCj4gU2luY2UgeW91IG5lZWQgYSBzbGlnaHRs
eSBkaWZmZXJlbnQgbWV0aG9kIHRvIGFsbG9jYXRlIGhpZ2ggb3JkZXIKPiBwYWdlcyBpbiBidWxr
LCB3ZSByZWFsbHkgc2hvdWxkIGhhdmUgYSB1bmlxdWUgd2F5IHRvIG5hbWUgdGhlCj4gYWxsb2Nh
dG9yIGludGVyZmFjZS4gVGhhdCdzIHdoeSBJJ2Qgc3VnZ2VzdCB0aGUgImNodW5rLSIgcHJlZml4
IHRvIHRoZQo+IGhlYXAgbmFtZS4KCkdvdCBpdC4gSG93IGFib3V0IHRoaXM/IAoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jaHVua19oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvY2h1bmtfaGVhcC5jCmluZGV4IDAyNzc3MDdhOTNhOS4uMzZlMTg5ZDBiNzNkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jCisrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9jaHVua19oZWFwLmMKQEAgLTQxMCw3ICs0MTAsNyBAQCBzdGF0aWMgaW50
IF9faW5pdCBjaHVua19oZWFwX2luaXQodm9pZCkKICAgICAgICBjaHVua19oZWFwLT5vcmRlciA9
IENIVU5LX0hFQVBfT1JERVI7CiAgICAgICAgY2h1bmtfaGVhcC0+Y21hID0gZGVmYXVsdF9jbWE7
CgotICAgICAgIGV4cF9pbmZvLm5hbWUgPSBjbWFfZ2V0X25hbWUoZGVmYXVsdF9jbWEpOworICAg
ICAgIGV4cF9pbmZvLm5hbWUgPSAiY21hLWNodW5rLWhlYXAiOwogICAgICAgIGV4cF9pbmZvLm9w
cyA9ICZjaHVua19oZWFwX29wczsKICAgICAgICBleHBfaW5mby5wcml2ID0gY2h1bmtfaGVhcDsK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
