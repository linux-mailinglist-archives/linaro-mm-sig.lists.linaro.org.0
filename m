Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CED63B1654
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 10:57:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E976E63514
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 08:57:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4BE1063549; Wed, 23 Jun 2021 08:57:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F30BD60FF8;
	Wed, 23 Jun 2021 08:57:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7EDFF60AE3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 08:57:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 714B360FF8; Wed, 23 Jun 2021 08:57:40 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 6980460AE3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 08:57:38 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id j2so1688668wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 01:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ZDxBkMAz03P8f+aMbelwxHltUcPmaJQiAy762htmSOw=;
 b=gKPDCYXud3/Ny6GugpuD8PxV3Af5S6G9njiquRSYdnYuIyUPc5d4pP41bLP8IncC+b
 q0G+HGYLvTHmPkI8X4/wi97s/dtCDFf49XbHlQi3Y8XHCnuItPph3HC8KyweTZ73ISLS
 6U70DcSwpJUikE7mrhXsZVWSIjwXeGdbOwnc7Gqoc2QWpTyRWMdjNrQM48WmgKKpatH8
 rBMNFlxNEU7ReMuigAM0E6MsLA5W/Uz06GOd1A8ft0Tyi8xffgc2Iz9N5ULy5mLXvBvT
 cN+ZLDZs6oxy0wovyiU+HR9yKzaIKdGhpmY80/A/dYDf/wFVdMrbAX+Lqv+PElUMYYoR
 h9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ZDxBkMAz03P8f+aMbelwxHltUcPmaJQiAy762htmSOw=;
 b=kDDWw1EknCk2rThRqrEcLV1fpp4gmVtZ+EFDYBT9cfmuQOUmAaYei9NyAPACrkn3ew
 r6c6oXGovCWIC9mwbg3DkhBClZ/8ai1AGYCl7CjsGyqXJIbX3xUXpL2JmkyMMIzUJl3V
 efmkGYC9o6+HF9nGgxrhBQcAN0FPkfNcDzt58NuLxARjcBJCNXzesm3ZJvNkKyNIQ+4w
 hbQH1kHjBmCTQQXS9LVaQyLYqERWbT5ZSwpvOuvGs6opiJOHbrKOl0s+xLj/AIJdk5c5
 ach21mE06Oldg2VxMLnyO9a4kI42i9b+wMG6sMXFcfawLR5Txl8goZ2Sf9rOd1sYZ0qc
 4Rcw==
X-Gm-Message-State: AOAM532cS7JtiIV4vCSqia4xj1w20hw3+e9+JcxuxlZO0WL6wwpIxZU7
 DDk0wdNup4pgFwnFPfXfpPc=
X-Google-Smtp-Source: ABdhPJyO8408BeqPk1gg6ZvXlAibkwfvIR/i0k8QSdflfw+3uxptNWJCkjKtYAdDMMiuTI3v4KYHDw==
X-Received: by 2002:adf:8b4d:: with SMTP id v13mr9929193wra.223.1624438657460; 
 Wed, 23 Jun 2021 01:57:37 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:69e4:a619:aa86:4e9c?
 ([2a02:908:1252:fb60:69e4:a619:aa86:4e9c])
 by smtp.gmail.com with ESMTPSA id u12sm2195254wrr.40.2021.06.23.01.57.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jun 2021 01:57:36 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>, =?UTF-8?Q?Christian_K=c3=b6nig?=
 <christian.koenig@amd.com>
References: <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
 <20210622152343.GO1096940@ziepe.ca>
 <3fabe8b7-7174-bf49-5ffe-26db30968a27@amd.com>
 <20210622154027.GS1096940@ziepe.ca>
 <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
 <20210622160538.GT1096940@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
Date: Wed, 23 Jun 2021 10:57:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210622160538.GT1096940@ziepe.ca>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, sleybo@amazon.com,
 Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjIuMDYuMjEgdW0gMTg6MDUgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gVHVlLCBK
dW4gMjIsIDIwMjEgYXQgMDU6NDg6MTBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMjIuMDYuMjEgdW0gMTc6NDAgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4+PiBPbiBU
dWUsIEp1biAyMiwgMjAyMSBhdCAwNToyOTowMVBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOgo+Pj4+IFtTTklQXQo+Pj4+IE5vIGFic29sdXRlbHkgbm90LiBOVmlkaWEgR1BVcyB3b3Jr
IGV4YWN0bHkgdGhlIHNhbWUgd2F5Lgo+Pj4+Cj4+Pj4gQW5kIHlvdSBoYXZlIHRvbnMgb2Ygc2lt
aWxhciBjYXNlcyBpbiBlbWJlZGRlZCBhbmQgU29DIHN5c3RlbXMgd2hlcmUKPj4+PiBpbnRlcm1l
ZGlhdGUgbWVtb3J5IGJldHdlZW4gZGV2aWNlcyBpc24ndCBkaXJlY3RseSBhZGRyZXNzYWJsZSB3
aXRoIHRoZSBDUFUuCj4+PiBOb25lIG9mIHRoYXQgaXMgUENJIFAyUC4KPj4+Cj4+PiBJdCBpcyBh
bGwgc29tZSBzcGVjaWFsdHkgZGlyZWN0IHRyYW5zZmVyLgo+Pj4KPj4+IFlvdSBjYW4ndCByZWFz
b25hYmx5IGNhbGwgZG1hX21hcF9yZXNvdXJjZSgpIG9uIG5vbiBDUFUgbWFwcGVkIG1lbW9yeQo+
Pj4gZm9yIGluc3RhbmNlLCB3aGF0IGFkZHJlc3Mgd291bGQgeW91IHBhc3M/Cj4+Pgo+Pj4gRG8g
bm90IGNvbmZ1c2UgIkkgYW0gZG9pbmcgdHJhbnNmZXJzIGJldHdlZW4gdHdvIEhXIGJsb2NrcyIg
d2l0aCBQQ0kKPj4+IFBlZXIgdG8gUGVlciBETUEgdHJhbnNmZXJzIC0gdGhlIGxhdHRlciBpcyBh
IHZlcnkgbmFycm93IHN1YmNhc2UuCj4+Pgo+Pj4+IE5vLCBqdXN0IHVzaW5nIHRoZSBkbWFfbWFw
X3Jlc291cmNlKCkgaW50ZXJmYWNlLgo+Pj4gSWssIGJ1dCB5ZXMgdGhhdCBkb2VzICJ3b3JrIi4g
TG9nYW4ncyBzZXJpZXMgaXMgYmV0dGVyLgo+PiBObyBpdCBpc24ndC4gSXQgbWFrZXMgZGV2aWNl
cyBkZXBlbmQgb24gYWxsb2NhdGluZyBzdHJ1Y3QgcGFnZXMgZm9yIHRoZWlyCj4+IEJBUnMgd2hp
Y2ggaXMgbm90IG5lY2Vzc2FyeSBub3IgZGVzaXJlZC4KPiBXaGljaCBkcmFtYXRpY2FsbHkgcmVk
dWNlcyB0aGUgY29zdCBvZiBlc3RhYmxpc2hpbmcgRE1BIG1hcHBpbmdzLCBhCj4gbG9vcCBvZiBk
bWFfbWFwX3Jlc291cmNlKCkgaXMgdmVyeSBleHBlbnNpdmUuCgpZZWFoLCBidXQgdGhhdCBpcyBw
ZXJmZWN0bHkgb2suIE91ciBCQVIgYWxsb2NhdGlvbnMgYXJlIGVpdGhlciBpbiBjaHVua3MgCm9m
IGF0IGxlYXN0IDJNaUIgb3Igb25seSBhIHNpbmdsZSA0S2lCIHBhZ2UuCgpPZGVkIG1pZ2h0IHJ1
biBpbnRvIG1vcmUgcGVyZm9ybWFuY2UgcHJvYmxlbXMsIGJ1dCB0aG9zZSBETUEtYnVmIAptYXBw
aW5ncyBhcmUgdXN1YWxseSBzZXQgdXAgb25seSBvbmNlLgoKPj4gSG93IGRvIHlvdSBwcmV2ZW50
IGRpcmVjdCBJL08gb24gdGhvc2UgcGFnZXMgZm9yIGV4YW1wbGU/Cj4gR1VQIGZhaWxzLgoKQXQg
bGVhc3QgdGhhdCBpcyBjYWxtaW5nLgoKPj4gQWxsb2NhdGluZyBhIHN0cnVjdCBwYWdlcyBoYXMg
dGhlaXIgdXNlIGNhc2UsIGZvciBleGFtcGxlIGZvciBleHBvc2luZyBWUkFNCj4+IGFzIG1lbW9y
eSBmb3IgSE1NLiBCdXQgdGhhdCBpcyBzb21ldGhpbmcgdmVyeSBzcGVjaWZpYyBhbmQgc2hvdWxk
IG5vdCBsaW1pdAo+PiBQQ0llIFAyUCBETUEgaW4gZ2VuZXJhbC4KPiBTdXJlLCBidXQgdGhhdCBp
cyBhbiBpZGVhbCB3ZSBhcmUgZmFyIGZyb20gb2J0YWluaW5nLCBhbmQgbm9ib2R5IHdhbnRzCj4g
dG8gd29yayBvbiBpdCBwcmVmZXJpbmcgdG8gZG8gaGFja3kgaGFja3kgbGlrZSB0aGlzLgo+Cj4g
SWYgeW91IGJlbGlldmUgaW4gdGhpcyB0aGVuIHJlbW92ZSB0aGUgc2NhdHRlciBsaXN0IGZyb20g
ZG1hYnVmLCBhZGQgYQo+IG5ldyBzZXQgb2YgZG1hX21hcCogQVBJcyB0byB3b3JrIG9uIHBoeXNp
Y2FsIGFkZHJlc3NlcyBhbmQgYWxsIHRoZQo+IG90aGVyIHN0dWZmIG5lZWRlZC4KClllYWgsIHRo
YXQncyB3aGF0IEkgdG90YWxseSBhZ3JlZSBvbi4gQW5kIEkgYWN0dWFsbHkgaG9wZWQgdGhhdCB0
aGUgbmV3IApQMlAgd29yayBmb3IgUENJZSB3b3VsZCBnbyBpbnRvIHRoYXQgZGlyZWN0aW9uLCBi
dXQgdGhhdCBkaWRuJ3QgCm1hdGVyaWFsaXplZC4KCkJ1dCBhbGxvY2F0aW5nIHN0cnVjdCBwYWdl
cyBmb3IgUENJZSBCQVJzIHdoaWNoIGFyZSBlc3NlbnRpYWxseSAKcmVnaXN0ZXJzIGFuZCBub3Qg
bWVtb3J5IGlzIG11Y2ggbW9yZSBoYWNreSB0aGFuIHRoZSBkbWFfcmVzb3VyY2VfbWFwKCkgCmFw
cHJvYWNoLgoKVG8gcmUtaXRlcmF0ZSB3aHkgSSB0aGluayB0aGF0IGhhdmluZyBzdHJ1Y3QgcGFn
ZXMgZm9yIHRob3NlIEJBUnMgaXMgYSAKYmFkIGlkZWE6IE91ciBkb29yYmVsbHMgb24gQU1EIEdQ
VXMgYXJlIHdyaXRlIGFuZCByZWFkIHBvaW50ZXJzIGZvciByaW5nIApidWZmZXJzLgoKV2hlbiB5
b3Ugd3JpdGUgdG8gdGhlIEJBUiB5b3UgZXNzZW50aWFsbHkgdGVsbCB0aGUgZmlybXdhcmUgdGhh
dCB5b3UgCmhhdmUgZWl0aGVyIGZpbGxlZCB0aGUgcmluZyBidWZmZXIgb3IgcmVhZCBhIGJ1bmNo
IG9mIGl0LiBUaGlzIGluIHR1cm4gCnRoZW4gdHJpZ2dlcnMgYW4gaW50ZXJydXB0IGluIHRoZSBo
YXJkd2FyZS9maXJtd2FyZSB3aGljaCB3YXMgZXZlbnR1YWxseSAKYXNsZWVwLgoKQnkgdXNpbmcg
UENJZSBQMlAgd2Ugd2FudCB0byBhdm9pZCB0aGUgcm91bmQgdHJpcCB0byB0aGUgQ1BVIHdoZW4g
b25lIApkZXZpY2UgaGFzIGZpbGxlZCB0aGUgcmluZyBidWZmZXIgYW5kIGFub3RoZXIgZGV2aWNl
IG11c3QgYmUgd29rZW4gdXAgdG8gCnByb2Nlc3MgaXQuCgpUaGluayBvZiBpdCBhcyBNU0ktWCBp
biByZXZlcnNlIGFuZCBhbGxvY2F0aW5nIHN0cnVjdCBwYWdlcyBmb3IgdGhvc2UgCkJBUnMganVz
dCB0byB3b3JrIGFyb3VuZCB0aGUgc2hvcnRjb21pbmdzIG9mIHRoZSBETUEgQVBJIG1ha2VzIG5v
IHNlbnNlIAphdCBhbGwgdG8gbWUuCgoKV2UgYWxzbyBkbyBoYXZlIHRoZSBWUkFNIEJBUiwgYW5k
IGZvciBITU0gd2UgZG8gYWxsb2NhdGUgc3RydWN0IHBhZ2VzIApmb3IgdGhlIGFkZHJlc3MgcmFu
Z2UgZXhwb3NlZCB0aGVyZS4gQnV0IHRoaXMgaXMgYSBkaWZmZXJlbnQgdXNlIGNhc2UuCgpSZWdh
cmRzLApDaHJpc3RpYW4uCgo+Cj4gT3RoZXJ3aXNlLCB3ZSBoYXZlIHdoYXQgd2UgaGF2ZSBhbmQg
ZHJpdmVycyBkb24ndCBnZXQgdG8gb3B0IG91dC4gVGhpcwo+IGlzIHdoeSB0aGUgc3R1ZmYgaW4g
QU1ER1BVIHdhcyBOQUsnZC4KPgo+IEphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
