Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D4630650E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 21:26:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E3186674C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 20:26:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E6366674E; Wed, 27 Jan 2021 20:26:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 540FF6675C;
	Wed, 27 Jan 2021 20:25:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C953F6674C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 20:25:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC15B6674E; Wed, 27 Jan 2021 20:25:54 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by lists.linaro.org (Postfix) with ESMTPS id 07DBD6674E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 20:25:41 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id n15so3099133qkh.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 12:25:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZoBtRS8YOTJzu29qNFHhNioiABAFU8p2auHgs06phc=;
 b=HZcHTrYHbNkFkgHzbShFKWi8ZWrDQ8P6jpwk0SHZBc9hp+8bs1qqX670odB+TQdzm6
 OmhTpigabQuK47xxXFgA8eq1ZunlSKY9okr5ZkUw8oaqKchW7pYOcZzLE95izT592nSW
 rwBNBgwI3sUsxn12r50nepFS0eBdse6YSjzrss3Jy2Xnr3yITDTbrMBnIldCxFUtdJNI
 8B2uouhg075j87IA+BdbcJUyUcAInZgo39COPmfvdaQFv14VzpVvuTUkuX9pIR+DDU4E
 1lIwGDDKaxbdXbhRPYC4pM03LqusXgj4Oc8WxQl8ubbrSlogCulzQj71IUTmWkhE3p3O
 HdGQ==
X-Gm-Message-State: AOAM531kjCrNuBJu0oNVqI4YVULwnTx889Gbq4Vzi1S85OxElLQAxOqx
 Us6QRnIAzU2TWCbTMygMkJQjr6jrymw1EG/j8mOweg==
X-Google-Smtp-Source: ABdhPJzrXGIOvM2o8iMF0bkxogCRV5D8LhWKGv10+6bJZ18hS+cdFs/W7ewbDbyxyJtymoETwoc1+36mu6cH94Vad+w=
X-Received: by 2002:a37:7003:: with SMTP id l3mr12574546qkc.467.1611779140267; 
 Wed, 27 Jan 2021 12:25:40 -0800 (PST)
MIME-Version: 1.0
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-4-minchan@kernel.org>
 <CALAqxLU3yU8e006G0W-mSBLogWAru6jOJcBbuH5wFHoi1JitPA@mail.gmail.com>
In-Reply-To: <CALAqxLU3yU8e006G0W-mSBLogWAru6jOJcBbuH5wFHoi1JitPA@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 27 Jan 2021 12:25:04 -0800
Message-ID: <CA+wgaPNoRm7GrUNm4wPV8BkWZT4KhqF5WHUb7f1U5Xz3zeSxGg@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michal Hocko <mhocko@suse.com>,
 Christoph Hellwig <hch@infradead.org>, Minchan Kim <minchan@kernel.org>,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>,
 linux-mm <linux-mm@kvack.org>, Hyesoo Yu <hyesoo.yu@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Dias <joaodias@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v4 3/4] dt-bindings: reserved-memory:
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

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTE6MDcgUE0gSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6
QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgOTo1NSBBTSBN
aW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPiB3cm90ZToKPiA+ICAuLi4vcmVzZXJ2ZWQt
bWVtb3J5L2RtYV9oZWFwX2NodW5rLnlhbWwgICAgICAgfCA1NiArKysrKysrKysrKysrKysrKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9k
bWFfaGVhcF9jaHVuay55YW1sCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBf
Y2h1bmsueWFtbAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAw
MC4uMDBkYjBhZTZhZjYxCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L2RtYV9oZWFwX2NodW5rLnlhbWwK
PiA+IEBAIC0wLDAgKzEsNTYgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0KPiA+ICsk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVh
cF9jaHVuay55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNj
aGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBEZXZpY2UgdHJlZSBiaW5kaW5nIGZv
ciBjaHVuayBoZWFwIG9uIERNQSBIRUFQIEZSQU1FV09SSwo+ID4gKwo+ID4gK2Rlc2NyaXB0aW9u
OiB8Cj4gPiArICBUaGUgRE1BIGNodW5rIGhlYXAgaXMgYmFja2VkIGJ5IHRoZSBDb250aWd1b3Vz
IE1lbW9yeSBBbGxvY2F0b3IgKENNQSkgYW5kCj4gPiArICBzdXBwb3J0cyBidWxrIGFsbG9jYXRp
b24gb2YgZml4ZWQgc2l6ZSBwYWdlcy4KPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0g
SHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gPiArICAtIEpvaG4gU3R1bHR6IDxq
b2huLnN0dWx0ekBsaW5hcm8ub3JnPgo+ID4gKyAgLSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPgo+ID4gKyAgLSBIcmlkeWEgVmFsc2FyYWp1PGhyaWR5YUBnb29nbGUuY29tPgo+ID4g
Kwo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBlbnVt
Ogo+ID4gKyAgICAgIC0gZG1hX2hlYXAsY2h1bmsKPiA+ICsKPiA+ICsgIGNodW5rLW9yZGVyOgo+
ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAgICAgICAgICAgIG9yZGVyIG9mIHBhZ2VzIHRo
YXQgd2lsbCBnZXQgYWxsb2NhdGVkIGZyb20gdGhlIGNodW5rIERNQSBoZWFwLgo+ID4gKyAgICBt
YXhJdGVtczogMQo+ID4gKwo+ID4gKyAgc2l6ZToKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsK
PiA+ICsgIGFsaWdubWVudDoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICtyZXF1aXJl
ZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSBzaXplCj4gPiArICAtIGFsaWdubWVudAo+
ID4gKyAgLSBjaHVuay1vcmRlcgo+ID4gKwo+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxz
ZQo+ID4gKwo+ID4gK2V4YW1wbGVzOgo+ID4gKyAgLSB8Cj4gPiArICAgIHJlc2VydmVkLW1lbW9y
eSB7Cj4gPiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPiA+ICsgICAgICAgICNzaXpl
LWNlbGxzID0gPDE+Owo+ID4gKwo+ID4gKyAgICAgICAgY2h1bmtfbWVtb3J5OiBjaHVua19tZW1v
cnkgewo+ID4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZG1hX2hlYXAsY2h1bmsiOwo+ID4g
KyAgICAgICAgICAgIHNpemUgPSA8MHgzMDAwMDAwPjsKPgo+IEhleSBNaW5jaGFuLAo+ICAgTG9v
a2luZyBjbG9zZXIgaGVyZSwgd291bGQgaXQgbWFrZSBtb3JlIHNlbnNlIHRvIGRvY3VtZW50IHRo
ZSAicmVnID0KPiA8PiIgcGFyYW1ldGVyIGhlcmUgYXMgd2VsbCBpbnN0ZWFkIG9mIGp1c3QgInNp
emUgPSA8PiI/Cj4KPiBUaGF0IHdheSB0aGUgYWRkcmVzcyBvZiB0aGUgcmVnaW9uIGNvdWxkIGJl
IGV4cGxpY2l0bHkgc3BlY2lmaWVkIChmb3IKPiBpbnN0YW5jZSwgdG8gZW5zdXJlIHRoZSBDTUEg
cmVnaW9uIGNyZWF0ZWQgaXMgMzJiaXQgYWRkcmVzc2FibGUpLiBBbmQKPiBtb3JlIHByYWN0aWNh
bGx5LCB0cnlpbmcgdG8gc2F0aXNmeSB0aGUgYmFzZSBhZGRyZXNzIGFsaWdubWVudCBjaGVja3MK
PiBpbiB0aGUgZmluYWwgcGF0Y2ggd2hlbiBpdHMgc2V0IGR5bmFtaWNhbGx5IG1heSByZXF1aXJl
IGEgZmFpciBhbW91bnQKPiBvZiBsdWNrICAtIEkgY291bGRuJ3QgbWFuYWdlIGl0IGluIG15IG93
biB0ZXN0aW5nIG9uIHRoZSBoaWtleTk2MCB3L28KPiByZXNvcnRpbmcgdG8gcmVnPSAgOikKPgo+
IEl0IGRvZXMgbG9vayBsaWtlIHRoZSBSRVNFUlZFRE1FTV9PRl9ERUNMQVJFKCkgbG9naWMgYWxy
ZWFkeSBzdXBwb3J0cwo+IHRoaXMsIHNvIGl0J3MgbGlrZWx5IGp1c3QgYSBtYXR0ZXIgb2YgZG9j
dW1lbnRpbmcgaXQgaGVyZT8KClRoYW5rIHlvdSBKb2huLCB5ZXMsIHRoYXQgbWFrZXMgc2Vuc2Uu
IFdlIHdpbGwgYWRkIHRoZSAncmVnJyBwYXJhbWV0ZXIKYXMgd2VsbCB3aGVuIHdlIHNlbmQgb3V0
IHRoZSBuZXh0IHZlcnNpb24uCgpSZWdhcmRzLApIcmlkeWEKCj4KPiB0aGFua3MKPiAtam9obgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
