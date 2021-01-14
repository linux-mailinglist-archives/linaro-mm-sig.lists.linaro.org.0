Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1731D2F6B7A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 20:50:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 428A6617EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 19:50:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3717966733; Thu, 14 Jan 2021 19:50:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 149EC607A0;
	Thu, 14 Jan 2021 19:49:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 45BDC607A0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 19:49:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 367CC60F4F; Thu, 14 Jan 2021 19:49:41 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 by lists.linaro.org (Postfix) with ESMTPS id 470A9607A0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 19:49:37 +0000 (UTC)
Received: by mail-qv1-f48.google.com with SMTP id p5so2888694qvs.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 11:49:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1zizu37IibkwemqdpaRibOtXAnbLUYIiJx9hqRg2s88=;
 b=s9LABL3zvBgzTZFaJ1+OSlw048xME3cumGGDrCpEdtmnJPPKYTuUayCCBSvDB+anJj
 F+dis89t9pz3K2xWtaez+jfcTah2Wa9cKKsQQ+rqdW4XjY5GOj7P++ahUav+hTa+mj1u
 gB8F7R4SDAY/sTPw2XBfPG6gm9sT/JlNGeBsvsRgkNdhUQe3cceakmBB6rOqh2SJk2Lz
 xgyqADz+ppT7e3gpNQzJEyh0ICGyElmRh9UMf5+3A/d+NkoXnjZLGW9cdsM0TZ7WGw5M
 jnbfZwSmfYCPKxox99Vv5opVnGil2OldPgfwYPwj6uv5/LgxTfgW2lWcONqEyZecDZtQ
 eHEw==
X-Gm-Message-State: AOAM532M0FJgJp2Fr1yb5nQrSQtontrXigVJLFPGBQR7xgDSa8xMxnxO
 PZPzOAH4F0pLbNa+5RpnsuC3PeSFgldU4YrtHFSl4w==
X-Google-Smtp-Source: ABdhPJxg5NPhOqA+7s9RwIlJJn5Yoqck0Iif3Unmra/z5l6l8oWvomlz3q0ZHTEDjMgJZhagYk2KBczrOl9d1bCcXus=
X-Received: by 2002:a0c:8203:: with SMTP id h3mr8726142qva.0.1610653776416;
 Thu, 14 Jan 2021 11:49:36 -0800 (PST)
MIME-Version: 1.0
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-4-minchan@kernel.org>
 <20210114140138.GA2796092@robh.at.kernel.org>
In-Reply-To: <20210114140138.GA2796092@robh.at.kernel.org>
From: Hridya Valsaraju <hridya@google.com>
Date: Thu, 14 Jan 2021 11:49:00 -0800
Message-ID: <CA+wgaPN3=1VOMmBUvHfvo7ePSuNUk9WJ2deSC37GYPmc2mdB-g@mail.gmail.com>
To: Rob Herring <robh@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com,
 Christoph Hellwig <hch@infradead.org>, Minchan Kim <minchan@kernel.org>,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>,
 linux-mm <linux-mm@kvack.org>, Hyesoo Yu <hyesoo.yu@samsung.com>,
 linaro-mm-sig@lists.linaro.org, John Stultz <john.stultz@linaro.org>,
 John Dias <joaodias@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 "pullip.cho" <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 3/4] dt-bindings: reserved-memory:
 Make DMA-BUF CMA heap DT-configurable
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

T24gVGh1LCBKYW4gMTQsIDIwMjEgYXQgNjowMSBBTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgSmFuIDEyLCAyMDIxIGF0IDA1OjIxOjQyUE0gLTA4MDAs
IE1pbmNoYW4gS2ltIHdyb3RlOgo+ID4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3Vu
Zy5jb20+Cj4gPgo+ID4gRG9jdW1lbnQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBjbWEg
aGVhcCBvbiBkbWEgaGVhcCBmcmFtZXdvcmsuCj4gPgo+ID4gVGhlIERNQSBjaHVuayBoZWFwIHN1
cHBvcnRzIHRoZSBidWxrIGFsbG9jYXRpb24gb2YgaGlnaGVyIG9yZGVyIHBhZ2VzLgo+Cj4gV2h5
IGRvIHdlIG5lZWQgdGhpcz8gV2hhdCBkb2VzIHRoaXMgZG8gdGhhdCBDTUEgZG9lc24ndD8KPgo+
IFdpdGggYSBDTUEgYXJlYSBJIGNhbiBiZWxpZXZlIGEgY2FydmUgb3V0IGlzIGEgY29tbW9uLCBP
UyBpbmRlcGVuZGVudAo+IHRoaW5nLiBUaGlzIGxvb2tzIHRvbyBjbG9zZWx5IHRpZWQgdG8gc29t
ZSBMaW51eCB0aGluZyB0byBnbyBpbnRvIERULgoKSGVsbG8gUm9iLAoKVGhhbmsgeW91IGZvciB0
aGUgcmV2aWV3IQoKVGhlIGNodW5rIGhlYXAncyBhbGxvY2F0b3IgYWxzbyBhbGxvY2F0ZXMgZnJv
bSB0aGUgQ01BIGFyZWEuIEl0IGlzLApob3dldmVyLCBvcHRpbWl6ZWQgdG8gcGVyZm9ybSBidWxr
IGFsbG9jYXRpb24gb2YgaGlnaGVyIG9yZGVyIHBhZ2VzIGluCmFuIGVmZmljaWVudCBtYW5uZXIu
IEZvciB0aGlzIHB1cnBvc2UsIHRoZSBoZWFwIG5lZWRzIGFuIGV4Y2x1c2l2ZSBDTUEKYXJlYSB0
aGF0IHdpbGwgb25seSBiZSB1c2VkIGZvciBhbGxvY2F0aW9uIGJ5IHRoZSBoZWFwLiBUaGlzIGlz
IHRoZQpyZWFzb24gd2h5IHdlIG5lZWQgdG8gdXNlIHRoZSBEVCB0byBjcmVhdGUgYW5kIGNvbmZp
Z3VyZSBhIHJlc2VydmVkCm1lbW9yeSByZWdpb24gZm9yIHVzZSBieSB0aGUgY2h1bmsgQ01BIGhl
YXAgZHJpdmVyLiBTaW5jZSBhbGwKYWxsb2NhdGlvbiBmcm9tIERNQS1CVUYgaGVhcHMgaGFwcGVu
IGZyb20gdGhlIHVzZXItc3BhY2UsIHRoZXJlIGlzIG5vCm90aGVyIGFwcHJvcHJpYXRlIGRldmlj
ZS1kcml2ZXIgdGhhdCB3ZSBjYW4gdXNlIHRvIHJlZ2lzdGVyIHRoZSBjaHVuawpDTUEgaGVhcCBh
bmQgY29uZmlndXJlIHRoZSByZXNlcnZlZCBtZW1vcnkgcmVnaW9uIGZvciBpdHMgdXNlLgoKV2Ug
aGF2ZSBiZWVuIGZvbGxvd2luZyB5b3VyIGd1aWRhbmNlIGluIFsxXSB0byBiaW5kIHRoZSBjaHVu
ayBDTUEgaGVhcApkcml2ZXIgZGlyZWN0bHkgdG8gdGhlIHJlc2VydmVkX21lbW9yeSByZWdpb24g
aXQgd2lsbCBhbGxvY2F0ZSBmcm9tLgpJcyB0aGVyZSBhbiBhbHRlcm5hdGl2ZSB0aGF0IHdlIGFy
ZSBtaXNzaW5nIFJvYj8KClsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MTAy
NTIyNTAwOS41MDMwNS0yLWpvaG4uc3R1bHR6QGxpbmFyby5vcmcvVC8jbTNkYzYzYWNkMzNmZWEy
NjlhNTg0ZjQzYmI3OTlhODc2ZjBiMmI0NWQKClRoZSB1c2UtY2FzZSB0aGF0IHdlIGhhdmUgZm9y
IHRoZSBoZWFwIGN1cnJlbnRseSB3aWxsIGFsbG9jYXRlIG1lbW9yeQpmcm9tIGl0IGZyb20gdXNl
cnNwYWNlIGFuZCB1c2UgdGhlIGFsbG9jYXRlZCBtZW1vcnkgdG8gb3B0aW1pemUKNEsvOEsgSERS
IHZpZGVvIHBsYXliYWNrIHdpdGggYSBzZWN1cmUgRFJNIEhXIHBpcGVsaW5lLgoKVGhhbmsgeW91
IGZvciBhbGwgdGhlIGhlbHAgYW5kIHJldmlldyA6KQoKUmVnYXJkcywKSHJpZHlhCgoKCgoKCj4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNvbT4K
PiA+IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiA+IENo
YW5nZS1JZDogSThmYjIzMWU1YTgzNjBlMmQ4ZjY1OTQ3ZTE1NWIxMmFhNjY0ZGRlMDEKPgo+IERy
b3AgdGhpcy4KPgo+ID4gLS0tCj4gPiAgLi4uL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVu
ay55YW1sICAgICAgIHwgNTggKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA1OCBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbAo+
ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVz
ZXJ2ZWQtbWVtb3J5L2RtYV9oZWFwX2NodW5rLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L2RtYV9oZWFwX2NodW5rLnlhbWwKPiA+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjNlN2ZlZDVmYjAwNgo+ID4g
LS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sCj4gPiBAQCAtMCwwICsxLDU4IEBA
Cj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1D
bGF1c2UpCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvc2NoZW1hcy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbCMKPiA+ICsk
c2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+
ICsKPiA+ICt0aXRsZTogRGV2aWNlIHRyZWUgYmluZGluZyBmb3IgY2h1bmsgaGVhcCBvbiBETUEg
SEVBUCBGUkFNRVdPUksKPiA+ICsKPiA+ICtkZXNjcmlwdGlvbjogfAo+ID4gKyAgVGhlIERNQSBj
aHVuayBoZWFwIGlzIGJhY2tlZCBieSB0aGUgQ29udGlndW91cyBNZW1vcnkgQWxsb2NhdG9yIChD
TUEpIGFuZAo+ID4gKyAgc3VwcG9ydHMgYnVsayBhbGxvY2F0aW9uIG9mIGZpeGVkIHNpemUgcGFn
ZXMuCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIEh5ZXNvbyBZdSA8aHllc29vLnl1
QHNhbXN1bmcuY29tPgo+ID4gKyAgLSBKb2huIFN0dWx0eiA8am9obi5zdHVsdHpAbGluYXJvLm9y
Zz4KPiA+ICsgIC0gTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4KPiA+ICsgIC0gSHJp
ZHlhIFZhbHNhcmFqdTxocmlkeWFAZ29vZ2xlLmNvbT4KPgo+IHNwYWNlICAgICAgICAgICAgICAg
ICAgXgo+Cj4gPiArCj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+ICsgIGNvbXBhdGlibGU6Cj4g
PiArICAgIGVudW06Cj4gPiArICAgICAgLSBkbWFfaGVhcCxjaHVuawo+Cj4gVGhlIGZvcm1hdCBp
cyA8dmVuZG9yPiw8c29tZXRoaW5nPiBhbmQgJ2RtYV9oZWFwJyBpcyBub3QgYSB2ZW5kb3IuCj4K
PiA+ICsKPiA+ICsgIGNodW5rLW9yZGVyOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAg
ICAgICAgICAgIG9yZGVyIG9mIHBhZ2VzIHRoYXQgd2lsbCBnZXQgYWxsb2NhdGVkIGZyb20gdGhl
IGNodW5rIERNQSBoZWFwLgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+ID4gKyAgc2l6ZToK
PiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGFsaWdubWVudDoKPiA+ICsgICAgbWF4
SXRlbXM6IDEKPiA+ICsKPiA+ICtyZXF1aXJlZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAg
LSBzaXplCj4gPiArICAtIGFsaWdubWVudAo+ID4gKyAgLSBjaHVuay1vcmRlcgo+ID4gKwo+ID4g
K2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ID4gKwo+ID4gK2V4YW1wbGVzOgo+ID4gKyAg
LSB8Cj4gPiArICAgIHJlc2VydmVkLW1lbW9yeSB7Cj4gPiArICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwyPjsKPiA+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDE+Owo+ID4gKwo+ID4gKyAgICAg
ICAgY2h1bmtfbWVtb3J5OiBjaHVua19tZW1vcnkgewo+ID4gKyAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAiZG1hX2hlYXAsY2h1bmsiOwo+ID4gKyAgICAgICAgICAgIHNpemUgPSA8MHgzMDAwMDAw
PjsKPiA+ICsgICAgICAgICAgICBhbGlnbm1lbnQgPSA8MHgwIDB4MDAwMTAwMDA+Owo+ID4gKyAg
ICAgICAgICAgIGNodW5rLW9yZGVyID0gPDQ+Owo+ID4gKyAgICAgICAgfTsKPiA+ICsgICAgfTsK
PiA+ICsKPiA+ICsKPiA+IC0tCj4gPiAyLjMwLjAuMjg0LmdkOThiMWRkNWVhYTctZ29vZwo+ID4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
