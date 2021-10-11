Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DC1429150
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Oct 2021 16:15:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9430B610C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Oct 2021 14:15:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6FE5360B04; Mon, 11 Oct 2021 14:15:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E70860A5F;
	Mon, 11 Oct 2021 14:15:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9FF8960A5F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Oct 2021 14:15:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 996A260A81; Mon, 11 Oct 2021 14:15:32 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 8CD2760A5F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Oct 2021 14:15:30 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id e12so56743714wra.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Oct 2021 07:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dLxsJUpDhzPmoSrF1qZa4Zl9U4s5BEcVvitiq3ldBzs=;
 b=Mn/WEBLhoPojIdasKOYB5LhCocKhVbLlACzAwBczfwTyYpXmjoT3McGcuu+JDd141P
 3AnFKTI1Sz5UOr/2c3ywRwQsUyxW767ajHj3fHlmgGHDWkqnoqBSIybMPlZRkg5VswOi
 SLsotX2bQGEMW3vODiry31+QiZ5fLEg+WhTAqnqZWkG5uX6zj8PEeLITv4miVDPE/nzo
 bonvBUEtb02b2B8DSW1B2/9P1vpJVaO5oKooPXMSU8HDTZTD3gf8d7nanzdQH5qN95SZ
 XyneiU+T2ZRXbzjl5U50wDHxfs0bT8cERLFA1mPcs+Dy6WMsXaTJMHVvWYCEKBLgLkIO
 dYvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dLxsJUpDhzPmoSrF1qZa4Zl9U4s5BEcVvitiq3ldBzs=;
 b=rZ+DdNbH9DQ5Xx3Y93CTNggUoooS1ylH+8VdSwRdWRvKRt4ep7GvO7oaTz4XEDtxCY
 jv8SOoqkPzYhw15t47U9hl/wppv2McN6bnHTtPtJ3T3YEl2NFV2chO4VzOjevvvbIcu/
 8wi5oR9vrQBNj+dXcyed8spad7+WmrKZY+ko0TR2JV6jpxJbmoyOP5KijvLn28HSGruj
 AtWyjiVs0+6ufSrmVX8CqlTipQJwOfeKL8jpkb+W/MWIVhqSloyi4V6zEfIU6HDBaPsk
 wsGX8ubc4xlRe+JBZXzQgMxROTfRf1Y3mbanMRgbT6MaG7TGC5Pn70LzdwQZwquWj9gb
 oDpw==
X-Gm-Message-State: AOAM531SJpfC9TSAgk1/7WWUyLcFcc2wexvY/VsNR9BN5yEryoTi7kq9
 BHi6QBW8Lpn83Af2SUtgPpycUQxaxY4=
X-Google-Smtp-Source: ABdhPJy/+QpPnkBOuHDSZzntKKe7Q8Ee96pGXUq+k16RcQqTRYLhJiw/aHSwZ/axPkNutqppOhNWhQ==
X-Received: by 2002:adf:a114:: with SMTP id o20mr24380239wro.95.1633961729555; 
 Mon, 11 Oct 2021 07:15:29 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:fefa:f968:b0f6:6172?
 ([2a02:908:1252:fb60:fefa:f968:b0f6:6172])
 by smtp.gmail.com with ESMTPSA id z8sm8053645wrq.16.2021.10.11.07.15.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Oct 2021 07:15:28 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Intel-gfx@lists.freedesktop.org
References: <20211008095007.972693-1-tvrtko.ursulin@linux.intel.com>
 <9eca89ab-f954-8b2a-7af5-b4a63b90eed0@amd.com>
 <67f413c4-b654-c7ea-bc4f-6b42418c7486@linux.intel.com>
 <85489b72-6001-98d8-d66a-395e05cd3d01@amd.com>
 <8f93439a-739d-835d-95e9-59ffb7380a27@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <a9f2661f-6f67-1cd7-e75d-c61aaaa381b4@gmail.com>
Date: Mon, 11 Oct 2021 16:15:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <8f93439a-739d-835d-95e9-59ffb7380a27@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-resv: Fix dma_resv_get_fences and
 dma_resv_copy_fences after conversion
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
Cc: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTEuMTAuMjEgdW0gMTQ6MzIgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDA4LzEw
LzIwMjEgMTM6MTksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFtIDA4LjEwLjIxIHVtIDEy
OjQ5IHNjaHJpZWIgVHZydGtvIFVyc3VsaW46Cj4+Pgo+Pj4gT24gMDgvMTAvMjAyMSAxMToyMSwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBBbSAwOC4xMC4yMSB1bSAxMTo1MCBzY2hyaWVi
IFR2cnRrbyBVcnN1bGluOgo+Pj4+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgo+Pj4+Pgo+Pj4+PiBDYWNoZSB0aGUgY291bnQgb2Ygc2hhcmVkIGZlbmNl
cyBpbiB0aGUgaXRlcmF0b3IgdG8gYXZvaWQgCj4+Pj4+IGRlcmVmZXJlbmNpbmcKPj4+Pj4gdGhl
IGRtYV9yZXN2X29iamVjdCBvdXRzaWRlIHRoZSBSQ1UgcHJvdGVjdGlvbi4gT3RoZXJ3aXNlIGl0
ZXJhdG9yIAo+Pj4+PiBhbmQgaXRzCj4+Pj4+IHVzZXJzIGNhbiBvYnNlcnZlIGFuIGluY29zaXN0
ZW50IHN0YXRlIHdoaWNoIG1ha2VzIGl0IGltcG9zc2libGUgCj4+Pj4+IHRvIHVzZQo+Pj4+PiBz
YWZlbHkuCj4+Pj4KPj4+PiBBaCwgb2YgY291cnNlISBJJ3ZlIGJlZW4gc3RhcmluZyBhdCB0aGUg
Y29kZSB0aGUgd2hvbGUgbW9ybmluZyBhbmQgCj4+Pj4gY291bGRuJ3Qgc2VlIGl0Lgo+Pj4+Cj4+
Pj4gR29pbmcgdG8gd3JpdGUgYSB0ZXN0Y2FzZSB0byBjb3ZlciB0aGF0Lgo+Pj4+Cj4+Pj4+IFN1
Y2ggYXM6Cj4+Pj4+Cj4+Pj4+IDw2PiBbMTg3LjUxNzA0MV0gW0lHVF0gZ2VtX3N5bmM6IGV4ZWN1
dGluZwo+Pj4+PiA8Nz4gWzE4Ny41MzYzNDNdIGk5MTUgMDAwMDowMDowMi4wOiAKPj4+Pj4gW2Ry
bTppOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9pb2N0bCBbaTkxNV1dIEhXIGNvbnRleHQgMSBjcmVh
dGVkCj4+Pj4+IDw3PiBbMTg3LjUzNjc5M10gaTkxNSAwMDAwOjAwOjAyLjA6IAo+Pj4+PiBbZHJt
Omk5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2lvY3RsIFtpOTE1XV0gSFcgY29udGV4dCAxIGNyZWF0
ZWQKPj4+Pj4gPDY+IFsxODcuNTUxMjM1XSBbSUdUXSBnZW1fc3luYzogc3RhcnRpbmcgc3VidGVz
dCBiYXNpYy1tYW55LWVhY2gKPj4+Pj4gPDE+IFsxODguOTM1NDYyXSBCVUc6IGtlcm5lbCBOVUxM
IHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IAo+Pj4+PiAwMDAwMDAwMDAwMDAwMDEwCj4+
Pj4+IDwxPiBbMTg4LjkzNTQ4NV0gI1BGOiBzdXBlcnZpc29yIHdyaXRlIGFjY2VzcyBpbiBrZXJu
ZWwgbW9kZQo+Pj4+PiA8MT4gWzE4OC45MzU0OTVdICNQRjogZXJyb3JfY29kZSgweDAwMDIpIC0g
bm90LXByZXNlbnQgcGFnZQo+Pj4+PiA8Nj4gWzE4OC45MzU1MDRdIFBHRCAwIFA0RCAwCj4+Pj4+
IDw0PiBbMTg4LjkzNTUxMl0gT29wczogMDAwMiBbIzFdIFBSRUVNUFQgU01QIE5PUFRJCj4+Pj4+
IDw0PiBbMTg4LjkzNTUyMV0gQ1BVOiAyIFBJRDogMTQ2NyBDb21tOiBnZW1fc3luYyBOb3QgdGFp
bnRlZCAKPj4+Pj4gNS4xNS4wLXJjNC1DSS1QYXRjaHdvcmtfMjEyNjQrICMxCj4+Pj4+IDw0PiBb
MTg4LjkzNTUzNV0gSGFyZHdhcmUgbmFtZTrCoCAvTlVDNkNBWUIsIEJJT1MgCj4+Pj4+IEFZQVBM
Q0VMLjg2QS4wMDQ5LjIwMTguMDUwOC4xMzU2IDA1LzA4LzIwMTgKPj4+Pj4gPDQ+IFsxODguOTM1
NTQ2XSBSSVA6IDAwMTA6ZG1hX3Jlc3ZfZ2V0X2ZlbmNlcysweDExNi8weDJkMAo+Pj4+PiA8ND4g
WzE4OC45MzU1NjBdIENvZGU6IDEwIDg1IGMwIDdmIGM5IGJlIDAzIDAwIDAwIDAwIGU4IDE1IDhi
IGRmIAo+Pj4+PiBmZiBlYiBiZCBlOCA4ZSBjNiBmZiBmZiBlYiBiNiA0MSA4YiAwNCAyNCA0OSA4
YiA1NSAwMCA0OCA4OSBlNyA4ZCAKPj4+Pj4gNDggMDEgNDEgODkgMGMgMjQgPDRjPiA4OSAzNCBj
MiBlOCA0MSBmMiBmZiBmZiA0OSA4OSBjNiA0OCA4NSBjMCAKPj4+Pj4gNzUgOGMgNDggOGIgNDQg
MjQgMTAKPj4+Pj4gPDQ+IFsxODguOTM1NTgzXSBSU1A6IDAwMTg6ZmZmZmM5MDAwMTFkYmNjOCBF
RkxBR1M6IDAwMDEwMjAyCj4+Pj4+IDw0PiBbMTg4LjkzNTU5M10gUkFYOiAwMDAwMDAwMDAwMDAw
MDAwIFJCWDogMDAwMDAwMDBmZmZmZmZmZiBSQ1g6IAo+Pj4+PiAwMDAwMDAwMDAwMDAwMDAxCj4+
Pj4+IDw0PiBbMTg4LjkzNTYwM10gUkRYOiAwMDAwMDAwMDAwMDAwMDEwIFJTSTogZmZmZmZmZmY4
MjJlMzQzYyBSREk6IAo+Pj4+PiBmZmZmYzkwMDAxMWRiY2M4Cj4+Pj4+IDw0PiBbMTg4LjkzNTYx
M10gUkJQOiBmZmZmYzkwMDAxMWRiZDQ4IFIwODogZmZmZjg4ODEyZDI1NWJiOCBSMDk6IAo+Pj4+
PiAwMDAwMDAwMGZmZmZmZmZlCj4+Pj4+IDw0PiBbMTg4LjkzNTYyM10gUjEwOiAwMDAwMDAwMDAw
MDAwMDAxIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IAo+Pj4+PiBmZmZmYzkwMDAxMWRiZDQ0
Cj4+Pj4+IDw0PiBbMTg4LjkzNTYzM10gUjEzOiBmZmZmYzkwMDAxMWRiZDUwIFIxNDogZmZmZjg4
ODExM2QyOWNjMCBSMTU6IAo+Pj4+PiAwMDAwMDAwMDAwMDAwMDAwCj4+Pj4+IDw0PiBbMTg4Ljkz
NTY0M10gRlM6wqAgMDAwMDdmNjhkMTdlOTcwMCgwMDAwKSAKPj4+Pj4gR1M6ZmZmZjg4ODI3Nzkw
MDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4+Pj4+IDw0PiBbMTg4LjkzNTY1NV0g
Q1M6wqAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPj4+Pj4g
PDQ+IFsxODguOTM1NjY1XSBDUjI6IDAwMDAwMDAwMDAwMDAwMTAgQ1IzOiAwMDAwMDAwMTJkMGE0
MDAwIENSNDogCj4+Pj4+IDAwMDAwMDAwMDAzNTA2ZTAKPj4+Pj4gPDQ+IFsxODguOTM1Njc2XSBD
YWxsIFRyYWNlOgo+Pj4+PiA8ND4gWzE4OC45MzU2ODVdwqAgaTkxNV9nZW1fb2JqZWN0X3dhaXQr
MHgxZmYvMHg0MTAgW2k5MTVdCj4+Pj4+IDw0PiBbMTg4LjkzNTk4OF3CoCBpOTE1X2dlbV93YWl0
X2lvY3RsKzB4ZjIvMHgyYTAgW2k5MTVdCj4+Pj4+IDw0PiBbMTg4LjkzNjI3Ml3CoCA/IGk5MTVf
Z2VtX29iamVjdF93YWl0KzB4NDEwLzB4NDEwIFtpOTE1XQo+Pj4+PiA8ND4gWzE4OC45MzY1MzNd
wqAgZHJtX2lvY3RsX2tlcm5lbCsweGFlLzB4MTQwCj4+Pj4+IDw0PiBbMTg4LjkzNjU0Nl3CoCBk
cm1faW9jdGwrMHgyMDEvMHgzZDAKPj4+Pj4gPDQ+IFsxODguOTM2NTU1XcKgID8gaTkxNV9nZW1f
b2JqZWN0X3dhaXQrMHg0MTAvMHg0MTAgW2k5MTVdCj4+Pj4+IDw0PiBbMTg4LjkzNjgyMF3CoCA/
IF9fZmdldF9maWxlcysweGMyLzB4MWMwCj4+Pj4+IDw0PiBbMTg4LjkzNjgzMF3CoCA/IF9fZmdl
dF9maWxlcysweGRhLzB4MWMwCj4+Pj4+IDw0PiBbMTg4LjkzNjgzOV3CoCBfX3g2NF9zeXNfaW9j
dGwrMHg2ZC8weGEwCj4+Pj4+IDw0PiBbMTg4LjkzNjg0OF3CoCBkb19zeXNjYWxsXzY0KzB4M2Ev
MHhiMAo+Pj4+PiA8ND4gWzE4OC45MzY4NTldIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFt
ZSsweDQ0LzB4YWUKPj4+Pj4KPj4+Pj4gSWYgdGhlIHNoYXJlZCBvYmplY3QgaGFzIGNoYW5nZWQg
ZHVyaW5nIHRoZSBSQ1UgdW5sb2NrZWQgcGVyaW9kCj4+Pj4+IGNhbGxlcnMgd2lsbCBjb3JyZWN0
bHkgaGFuZGxlIHRoZSByZXN0YXJ0IG9uIHRoZSBuZXh0IGl0ZXJhdGlvbi4KPj4+Pj4KPj4+Pj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
Pj4+Pj4gRml4ZXM6IDk2NjAxZThhNDc1NSAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4g
Cj4+Pj4+IGRtYV9yZXN2X2NvcHlfZmVuY2VzIikKPj4+Pj4gRml4ZXM6IGQzYzgwNjk4YzlmNSAo
ImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4gCj4+Pj4+IGRtYV9yZXN2X2dldF9mZW5jZXMg
djMiKQo+Pj4+PiBDbG9zZXM6IAo+Pj4+PiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0
aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRsYWIuZnJlZWRlc2t0b3Aub3Jn
JTJGZHJtJTJGaW50ZWwlMkYtJTJGaXNzdWVzJTJGNDI3NCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hy
aXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0NjMjJmZWVhMDZhM2Y0Mjg1Y2RhYzA4ZDk4YTQ5NTk4
NCU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2OTI4NzA4
MDUxNjA5MDklN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pR
SWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCZhbXA7c2Rh
dGE9Nm9QUjMwc1duSmUwNEk0R2xoaHZKV1gzUXZ3S0ZJT01XMXVPSXlXWkZPRSUzRCZhbXA7cmVz
ZXJ2ZWQ9MCAKPj4+Pj4KPj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KPj4+Pj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+Cj4+Pj4+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+Pj4+
PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4+Pj4+IENjOiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKPj4+Pgo+Pj4+IE1heWJlIHdlIHNob3VsZCByZW1vdmUgY3Vyc29yLT5mZW5jZXMgYWx0b2dl
dGhlciwgYnV0IGVpdGhlciB3YXkgCj4+Pj4gdGhlIHBhdGNoIGlzIFJldmlld2VkLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+Pj4KPj4+PiBQbGVhc2Ug
cHVzaCB0byBkcm0tbWlzYy1uZXh0IEFTQVAuCj4+Pgo+Pj4gTm90IHN1cmUgSSBjYW4gb3IgaWYg
bXkgcHVzaCBwZXJtaXNzaW9ucyBhcmUgbGltaXRlZCB0byBJbnRlbCAKPj4+IGJyYW5jaGVzLiBJ
IGNhbiB0cnkgb25jZSBDSSBnaXZlcyBhIGdyZWVuIGxpZ2h0Lgo+Pgo+PiBJZiBpdCBkb2Vzbid0
IHdvcmsganVzdCBwaW5nIG1lIGFuZCBJIHdpbGwgcHVzaCBpdC4KPgo+IEl0IGZpbmFsbHkgcGFz
c2VkIENJIGJ1dCBpdCBsb29rcyBsaWtlIHlvdSdsbCBuZWVkIHRvIHB1c2ggaXQ6CgpEb25lLgoK
Q2hyaXN0aWFuLgoKPgo+IHR1cnN1bGluQHR1cnN1bGluLW1vYmwyOn4vd2MvZGltL3NyYyQgZGlt
IHB1c2gtYnJhbmNoIGRybS1taXNjLW5leHQKPiBFbnVtZXJhdGluZyBvYmplY3RzOiAxNSwgZG9u
ZS4KPiBDb3VudGluZyBvYmplY3RzOiAxMDAlICgxNS8xNSksIGRvbmUuCj4gRGVsdGEgY29tcHJl
c3Npb24gdXNpbmcgdXAgdG8gOCB0aHJlYWRzCj4gQ29tcHJlc3Npbmcgb2JqZWN0czogMTAwJSAo
OC84KSwgZG9uZS4KPiBXcml0aW5nIG9iamVjdHM6IDEwMCUgKDgvOCksIDIuMzIgS2lCIHwgNTkz
LjAwIEtpQi9zLCBkb25lLgo+IFRvdGFsIDggKGRlbHRhIDcpLCByZXVzZWQgMCAoZGVsdGEgMCks
IHBhY2stcmV1c2VkIDAKPiBlcnJvcjogcmVtb3RlIHVucGFjayBmYWlsZWQ6IHVuYWJsZSB0byBj
cmVhdGUgdGVtcG9yYXJ5IG9iamVjdCBkaXJlY3RvcnkKPiBUbyBzc2g6Ly9naXQuZnJlZWRlc2t0
b3Aub3JnL2dpdC9kcm0vZHJtLW1pc2MKPiDCoCEgW3JlbW90ZSByZWplY3RlZF3CoMKgwqDCoMKg
wqDCoMKgwqDCoCBkcm0tbWlzYy1uZXh0IC0+IGRybS1taXNjLW5leHQgCj4gKHVucGFja2VyIGVy
cm9yKQo+IGVycm9yOiBmYWlsZWQgdG8gcHVzaCBzb21lIHJlZnMgdG8gCj4gJ3NzaDovL2dpdC5m
cmVlZGVza3RvcC5vcmcvZ2l0L2RybS9kcm0tbWlzYycKPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0Cj4gTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4g
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
