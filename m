Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C4E267ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 May 2019 18:18:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9862608DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 May 2019 16:18:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D8D4E60F4A; Wed, 22 May 2019 16:18:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8068760F45;
	Wed, 22 May 2019 16:18:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5523B608DF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2019 16:17:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3BE09608CE; Wed, 22 May 2019 16:17:59 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 0D736608CE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2019 16:17:58 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id l17so2631322otq.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2019 09:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uZnS38EBVW2iZ9H54x1WrqV/ExYc3w2djCQImrBE2rU=;
 b=SuysohLoPwpW/jn77CV+WO/wKSgSqLqy73ef9EUNf3pwPi7hGhj700QgenM9UqbRU2
 l+dS9MxxNLmlRHyYQ0wfgQ+nG/qUNBVMiNoB6UWSmRntr7RJZGlRCj2JxfQArhvWX+T1
 pJjSzMxfBZGXQljYsINt+a4+vA9R+5C9CF24Qz7kEFrKO1LTqsdnz5ZwqdaJRZ/lsW7Z
 4/nGZ7FelrQsl4YKcbptVtu0dRszdCI8XytGmOAUIOurNGTCGOJfdo1jXFhk5u1TbrBG
 mHdYxIU9oxhgwq2Z2BPs/qq2JZ0skCP6Ux1Wu8cJZRjubwDLjxpaupCgEb0aI38WX7ke
 TYhw==
X-Gm-Message-State: APjAAAWAPKgeN4CvlNOuPYc8+/u4sH7+MUC7ixGuq3TfuTJTxiHbMOK+
 JThAXEr5+PjmRP4FCqRQ58/Ue0dSbL8m39K4fWXjEan5
X-Google-Smtp-Source: APXvYqwiHJgKfv3RPGnam7NhQkqAVji6zxMV25gVCjnVXHUAunGHPrKPYNOB99xLvcoSn8B3uey9R/DsH27Z2nWzEr0=
X-Received: by 2002:a9d:32a1:: with SMTP id u30mr36439046otb.371.1558541877365; 
 Wed, 22 May 2019 09:17:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190416183841.1577-1-christian.koenig@amd.com>
 <1556323269-19670-1-git-send-email-lmark@codeaurora.org>
In-Reply-To: <1556323269-19670-1-git-send-email-lmark@codeaurora.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 22 May 2019 21:47:46 +0530
Message-ID: <CAO_48GGanguXbmYDD+p1kK_VkiWdZSTYAD1y-0JQK7hqL_OPPg@mail.gmail.com>
To: Liam Mark <lmark@codeaurora.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 01/12] dma-buf: add dynamic caching of
	sg_table
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

SGkgQ2hyaXN0aWFuLAoKT24gU2F0LCAyNyBBcHIgMjAxOSBhdCAwNTozMSwgTGlhbSBNYXJrIDxs
bWFya0Bjb2RlYXVyb3JhLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIDE2IEFwciAyMDE5LCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOgo+Cj4gPiBUbyBhbGxvdyBhIHNtb290aCB0cmFuc2l0aW9uIGZy
b20gcGlubmluZyBidWZmZXIgb2JqZWN0cyB0byBkeW5hbWljCj4gPiBpbnZhbGlkYXRpb24gd2Ug
Zmlyc3Qgc3RhcnQgdG8gY2FjaGUgdGhlIHNnX3RhYmxlIGZvciBhbiBhdHRhY2htZW50Cj4gPiB1
bmxlc3MgdGhlIGRyaXZlciBleHBsaWNpdGx5IHNheXMgdG8gbm90IGRvIHNvLgo+ID4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyNCArKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgMTEgKysrKysrKysrKysKPiA+
ICAyIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+
IGluZGV4IDdjODU4MDIwZDE0Yi4uNjUxNjFhODJkNGQ1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+
ID4gQEAgLTU3Myw2ICs1NzMsMjAgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqZG1hX2J1
Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKPiA+ICAgICAgIGxpc3RfYWRkKCZhdHRh
Y2gtPm5vZGUsICZkbWFidWYtPmF0dGFjaG1lbnRzKTsKPiA+Cj4gPiAgICAgICBtdXRleF91bmxv
Y2soJmRtYWJ1Zi0+bG9jayk7Cj4gPiArCj4gPiArICAgICBpZiAoIWRtYWJ1Zi0+b3BzLT5keW5h
bWljX3NndF9tYXBwaW5nKSB7Cj4gPiArICAgICAgICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc2d0
Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBzZ3QgPSBkbWFidWYtPm9wcy0+bWFwX2RtYV9idWYo
YXR0YWNoLCBETUFfQklESVJFQ1RJT05BTCk7Cj4gPiArICAgICAgICAgICAgIGlmICghc2d0KQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHNndCA9IEVSUl9QVFIoLUVOT01FTSk7Cj4gPiArICAg
ICAgICAgICAgIGlmIChJU19FUlIoc2d0KSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRt
YV9idWZfZGV0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gRVJSX0NBU1Qoc2d0KTsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKyAgICAgICAgICAg
ICBhdHRhY2gtPnNndCA9IHNndDsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICAgICAgIHJldHVybiBh
dHRhY2g7Cj4gPgo+ID4gIGVycl9hdHRhY2g6Cj4gPiBAQCAtNTk1LDYgKzYwOSwxMCBAQCB2b2lk
IGRtYV9idWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaCkKPiA+ICAgICAgIGlmIChXQVJOX09OKCFkbWFidWYgfHwgIWF0dGFj
aCkpCj4gPiAgICAgICAgICAgICAgIHJldHVybjsKPiA+Cj4gPiArICAgICBpZiAoYXR0YWNoLT5z
Z3QpCj4gPiArICAgICAgICAgICAgIGRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFjaCwg
YXR0YWNoLT5zZ3QsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IERNQV9CSURJUkVDVElPTkFMKTsKPiA+ICsKPiA+ICAgICAgIG11dGV4X2xvY2soJmRtYWJ1Zi0+
bG9jayk7Cj4gPiAgICAgICBsaXN0X2RlbCgmYXR0YWNoLT5ub2RlKTsKPiA+ICAgICAgIGlmIChk
bWFidWYtPm9wcy0+ZGV0YWNoKQo+ID4gQEAgLTYzMCw2ICs2NDgsOSBAQCBzdHJ1Y3Qgc2dfdGFi
bGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoLAo+ID4gICAgICAgaWYgKFdBUk5fT04oIWF0dGFjaCB8fCAhYXR0YWNoLT5kbWFidWYpKQo+
ID4gICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiA+Cj4gPiArICAgICBp
ZiAoYXR0YWNoLT5zZ3QpCj4gPiArICAgICAgICAgICAgIHJldHVybiBhdHRhY2gtPnNndDsKPiA+
ICsKPgo+IEkgYW0gY29uY2VybmVkIGJ5IHRoaXMgY2hhbmdlIHRvIG1ha2UgY2FjaGluZyB0aGUg
c2dfdGFibGUgdGhlIGRlZmF1bHQKPiBiZWhhdmlvciBhcyB0aGlzIHdpbGwgcmVzdWx0IGluIHRo
ZSBleHBvcnRlcidzIG1hcF9kbWFfYnVmL3VubWFwX2RtYV9idWYKPiBjYWxscyBhcmUgbm8gbG9u
Z2VyIGJlaW5nIGNhbGxlZCBpbgo+IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQvZG1hX2J1Zl91bm1h
cF9hdHRhY2htZW50LgoKUHJvYmFibHkgdGhpcyBjb25jZXJuIGZyb20gTGlhbSBnb3QgbG9zdCBi
ZXR3ZWVuIHZlcnNpb25zIG9mIHlvdXIKcGF0Y2hlczsgY291bGQgd2UgcGxlYXNlIHJlcXVlc3Qg
YSByZXBseSB0byB0aGVzZSBwb2ludHMgaGVyZT8KPgo+IFRoaXMgc2VlbXMgY29uY2VybmluZyB0
byBtZSBhcyBpdCBhcHBlYXJzIHRvIGlnbm9yZSB0aGUgY2FjaGUgbWFpbnRlbmFuY2UKPiBhc3Bl
Y3Qgb2YgdGhlIG1hcF9kbWFfYnVmL3VubWFwX2RtYV9idWYgY2FsbHMuCj4gRm9yIGV4YW1wbGUg
d29uJ3QgdGhpcyBwb3RlbnRpYWxseSBjYXVzZSBpc3N1ZXMgZm9yIGNsaWVudHMgb2YgSU9OLgo+
Cj4gSWYgd2UgaGFkIHRoZSBmb2xsb3dpbmcKPiAtICMxIGRtYV9idWZfYXR0YWNoIGNvaGVyZW50
X2RldmljZQo+IC0gIzIgZG1hX2J1ZiBhdHRhY2ggbm9uX2NvaGVyZW50X2RldmljZQo+IC0gIzMg
ZG1hX2J1Zl9tYXBfYXR0YWNobWVudCBub25fY29oZXJlbnRfZGV2aWNlCj4gLSAjNCBub25fY29o
ZXJlbnRfZGV2aWNlIHdyaXRlcyB0byBidWZmZXIKPiAtICM1IGRtYV9idWZfdW5tYXBfYXR0YWNo
bWVudCBub25fY29oZXJlbnRfZGV2aWNlCj4gLSAjNiBkbWFfYnVmX21hcF9hdHRhY2htZW50IGNv
aGVyZW50X2RldmljZQo+IC0gIzcgY29oZXJlbnRfZGV2aWNlIHJlYWRzIGJ1ZmZlcgo+IC0gIzgg
ZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50IGNvaGVyZW50X2RldmljZQo+Cj4gVGhlcmUgd291bGRu
J3QgYmUgYW55IENNTyBhdCBzdGVwICM1IGFueW1vcmUgKHNwZWNpZmljYWxseSBubyBpbnZhbGlk
YXRlKQo+IHNvIG5vdyBhdCBzdGVwICM3IHRoZSBjb2hlcmVudF9kZXZpY2UgY291bGQgcmVhZCBh
IHN0YWxlIGNhY2hlIGxpbmUuCj4KPiBBbHNvLCBub3cgYnkgZGVmYXVsdCBkbWFfYnVmX3VubWFw
X2F0dGFjaG1lbnQgbm8gbG9uZ2VyIHJlbW92ZXMgdGhlCj4gbWFwcGluZ3MgZnJvbSB0aGUgaW9t
bXUsIHNvIG5vdyBieSBkZWZhdWx0IGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCBpcyBub3QKPiBk
b2luZyB3aGF0IEkgd291bGQgZXhwZWN0IGFuZCBjbGllbnRzIGFyZSBsb3NpbmcgdGhlIHBvdGVu
dGlhbCBzYW5kYm94aW5nCj4gYmVuZWZpdHMgb2YgcmVtb3ZpbmcgdGhlIG1hcHBpbmdzLgo+IFNo
b3VsZG4ndCB0aGlzIGNhY2hpbmcgYmVoYXZpb3IgYmUgc29tZXRoaW5nIHRoYXQgY2xpZW50cyBv
cHQgaW50byBpbnN0ZWFkCj4gb2YgYmVpbmcgdGhlIGRlZmF1bHQ/Cj4KPiBMaWFtCj4KPiBRdWFs
Y29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlciBvZiBDb2RlIEF1cm9yYSBG
b3J1bSwKPiBhIExpbnV4IEZvdW5kYXRpb24gQ29sbGFib3JhdGl2ZSBQcm9qZWN0Cj4KCkJlc3Qs
ClN1bWl0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
