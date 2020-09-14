Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF2B2694D0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 20:27:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0498266635
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 18:27:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E25BE666D3; Mon, 14 Sep 2020 18:27:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 498B9666C2;
	Mon, 14 Sep 2020 18:26:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D546B66608
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 18:26:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C1EEF666C2; Mon, 14 Sep 2020 18:26:51 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id D208966608
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 18:26:50 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id j11so1414699ejk.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 11:26:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=rRCccI3O7Q3cBqCSADJ9p4p+tEsMBm/uVKtxbUUahJg=;
 b=d233LtMZTLd9snkFvMcZ4Op0Ii2XMCYJVTzHZAaYm9JUpxBfpeY5d1CQ3UlBdfGdtR
 G6rFiSLiN8ZfHI9335sWqK/R/sQx3EQAC81MvrLbQ0WXXLtkSOjJQVKSf6+7ge4OwC2h
 OfckIvjDe2aBWH+lo7KeFCF8w3/oa6SDVHVEiBImIrWo8Gs36z+Z506LSIHHApTtoDSS
 ZjZcg9wVrR0LmvM41xWkaws2JcK77ChTfLC2+TOnyl8vsYpIsP/k1HBQFJ6bbfqPDe/A
 ZFojjm3KiBQ0RFF2kYhkrlWet28K/35fCU0XBHCVAL8bUQQEg8Nm6SMwiWGaf0P3p4hO
 u3lg==
X-Gm-Message-State: AOAM531Pqx7+we6Xj1FaO4fZZD27iZ+H1c2zPhPQxduA+8yulmZ/iVLa
 HCn8HYE8wqCXZYgMBAsL/4s=
X-Google-Smtp-Source: ABdhPJz2+wxT5cFNCOXfBWV9IOT32aJMuEc+G7OyK+aP3oDWfuWU/cXhqKfbYJVkKAeo1FWAagaPJg==
X-Received: by 2002:a17:906:a101:: with SMTP id
 t1mr15720702ejy.203.1600108009977; 
 Mon, 14 Sep 2020 11:26:49 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id b6sm9871930eds.46.2020.09.14.11.26.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Sep 2020 11:26:49 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
Date: Mon, 14 Sep 2020 20:26:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914140632.GD1221970@ziepe.ca>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, akpm@linux-foundation.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTQuMDkuMjAgdW0gMTY6MDYgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gTW9uLCBT
ZXAgMTQsIDIwMjAgYXQgMDM6MzA6NDdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMTQuMDkuMjAgdW0gMTU6Mjkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+Pj4gSGkg
QW5kcmV3LAo+Pj4KPj4+IEknbSB0aGUgbmV3IERNQS1idWYgbWFpbnRhaW5lciBhbmQgRGFuaWVs
IGFuZCBvdGhlcnMgY2FtZSB1cCB3aXRoCj4+PiBwYXRjaGVzIGV4dGVuZGluZyB0aGUgdXNlIG9m
IHRoZSBkbWFfYnVmX21tYXAoKSBmdW5jdGlvbi4KPj4+Cj4+PiBOb3cgdGhpcyBmdW5jdGlvbiBp
cyBkb2luZyBzb21ldGhpbmcgYSBiaXQgb2RkIGJ5IGNoYW5naW5nIHRoZQo+Pj4gdm1hLT52bV9m
aWxlIHdoaWxlIGluc3RhbGxpbmcgYSBWTUEgaW4gdGhlIG1tYXAoKSBzeXN0ZW0gY2FsbAo+IEl0
IGRvZXNuJ3QgbG9vayBvYnZpb3VzbHkgc2FmZSBhcyBtbWFwX3JlZ2lvbigpIGhhcyBhbiBpbnRl
cmVzdGluZyBtaXgKPiBvZiBmaWxlIGFuZCB2bWEtPmZpbGUKPgo+IEVnIGl0IGNhbGxzIG1hcHBp
bmdfdW5tYXBfd3JpdGFibGUoKSB1c2luZyBib3RoIHJvdXRlcwoKVGhhbmtzIGZvciB0aGUgaGlu
dCwgZ29pbmcgdG8gdGFrZSBhIGxvb2sgYXQgdGhhdCBjb2RlIHRvbW9ycm93LgoKPiBXaGF0IGFi
b3V0IHNlY3VyaXR5PyBJcyBpdCBPSyB0aGF0IHNvbWUgb3RoZXIgcmFuZG9tIGZpbGUsIG1heWJl
IGluCj4gYW5vdGhlciBwcm9jZXNzLCBpcyBiZWluZyBsaW5rZWQgdG8gdGhpcyBtbWFwPwoKR29v
ZCBxdWVzdGlvbiwgSSBoYXZlIG5vIGlkZWEuIFRoYXQncyB3aHkgSSBzZW5kIG91dCB0aGlzIG1h
aWwuCgo+Pj4gVGhlIGJhY2tncm91bmQgaGVyZSBpcyB0aGF0IERNQS1idWYgYWxsb3dzIGRldmlj
ZSBkcml2ZXJzIHRvCj4+PiBleHBvcnQgYnVmZmVyIHdoaWNoIGFyZSB0aGVuIGltcG9ydGVkIGlu
dG8gYW5vdGhlciBkZXZpY2UKPj4+IGRyaXZlci4gVGhlIG1tYXAoKSBoYW5kbGVyIG9mIHRoZSBp
bXBvcnRpbmcgZGV2aWNlIGRyaXZlciB0aGVuCj4+PiBmaW5kIHRoYXQgdGhlIHBnb2ZmIGJlbG9u
Z3MgdG8gdGhlIGV4cG9ydGluZyBkZXZpY2UgYW5kIHNvCj4+PiByZWRpcmVjdHMgdGhlIG1tYXAo
KSBjYWxsIHRoZXJlLgo+IFNvIHRoZSBwZ29mZiBpcyBzb21lIHZpcnR1YWxpemVkIHRoaW5nPwoK
WWVzLCBhYnNvbHV0ZWx5LgoKQ2hyaXN0aWFuLgoKPgo+IEphc29uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
