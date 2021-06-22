Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D503B038A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 14:01:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A060C63E5D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 12:01:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 39365631AE; Tue, 22 Jun 2021 12:01:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E165D61179;
	Tue, 22 Jun 2021 12:01:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3D33E61175
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 12:01:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3AE7A61179; Tue, 22 Jun 2021 12:01:46 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by lists.linaro.org (Postfix) with ESMTPS id 3365061175
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 12:01:44 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id g4so37476376qkl.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 05:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=uZXjrCktHYqiHY7Zuave3Zqe+nWlABu14O38dLKiRSc=;
 b=V1vGTztZADrEdhzlzySX29OAyznJd+LoMCj0Tl5HgSKC/gYfSvRa4RbGq1dowEhGfV
 daLDhPvM9+xafGLmtfuTCbex8YEiqsKJyrpDW4po9e16l0EgzUkVl44Hmyz39LGoO7xT
 TzLfvUBU/DW8f9Bi5bQpi35/7V2g6v30a9D8yfcA8rTZQB+vxYyM9vAI2U0vDLGGfIJy
 vutkFVFlx3zvB/LwkqKxO1Zhegmmb3Lh6V0Sj8MNmRXtTiRqKmKokko1doEKvfc01llt
 m1k5v66LhFEesVNI9Fs78siXiJEJKb+BhvYsnd/58x+uaR7+OOZwrnkeKi2AGgaPMM8m
 J+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=uZXjrCktHYqiHY7Zuave3Zqe+nWlABu14O38dLKiRSc=;
 b=l/LZSMhfzyQ4fdkmm0D8E8U1+qtOF4aNuAwn4vpBoCFGYrUV2bazgbhVU4jVZyGN5u
 VhD5CDrNsfN2+JneYix3QZHTA+EW+wiHd5KKynOhpUXmCEti6kzQpvRKiEzmTSbEThZQ
 +o7Le5yjcJtdASslkDn/XluMZb/C8N/7nLZSK6J1sCFtDtLm1rJhaoRLde9f45MwFP9O
 R344UbvSgf6B8fB2ogHz2lMSA9a+l0YVXa2C0/Z7OCkdque8HqqQWMuiBfjJs3dywkUd
 ESFC7IOTm3Troz6tGjqX5/7ie+Om/Z6DHPXFU8zImmSPbYeY+Q8wL1xalU0v/R9fSYyU
 Ikdw==
X-Gm-Message-State: AOAM53154x/h9uh6aFrMNW5EnHOCJxKlCuuOumj3T9mZvmbjeLYSrrmD
 /yobaOSjuVgzq5KMfrGahxHaSg==
X-Google-Smtp-Source: ABdhPJya7BBhAOKrUhmySN3jYp1EpbKfOqKBSj+U+j//RgFUf85U7EK52a+yYa92TMoPjVXQfaSu4g==
X-Received: by 2002:a37:496:: with SMTP id 144mr3716033qke.456.1624363303727; 
 Tue, 22 Jun 2021 05:01:43 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id d23sm1485085qto.74.2021.06.22.05.01.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 05:01:43 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvf66-00A9JB-Im; Tue, 22 Jun 2021 09:01:42 -0300
Date: Tue, 22 Jun 2021 09:01:42 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210622120142.GL1096940@ziepe.ca>
References: <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
 <YNCN0ulL6DQiRJaB@kroah.com> <20210621141217.GE1096940@ziepe.ca>
 <CAFCwf10KvCh0zfHEHqYR-Na6KJh4j+9i-6+==QaMdHHpLH1yEA@mail.gmail.com>
 <20210621175511.GI1096940@ziepe.ca>
 <CAKMK7uEO1_B59DtM7N2g7kkH7pYtLM_WAkn+0f3FU3ps=XEjZQ@mail.gmail.com>
 <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
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
Cc: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>, sleybo@amazon.com,
 Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMTE6NDI6MjdBTSArMDMwMCwgT2RlZCBHYWJiYXkgd3Jv
dGU6Cj4gT24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgOTozNyBBTSBDaHJpc3RpYW4gS8O2bmlnCj4g
PGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBBbSAyMi4w
Ni4yMSB1bSAwMToyOSBzY2hyaWViIEphc29uIEd1bnRob3JwZToKPiA+ID4gT24gTW9uLCBKdW4g
MjEsIDIwMjEgYXQgMTA6MjQ6MTZQTSArMDMwMCwgT2RlZCBHYWJiYXkgd3JvdGU6Cj4gPiA+Cj4g
PiA+PiBBbm90aGVyIHRoaW5nIEkgd2FudCB0byBlbXBoYXNpemUgaXMgdGhhdCB3ZSBhcmUgZG9p
bmcgcDJwIG9ubHkKPiA+ID4+IHRocm91Z2ggdGhlIGV4cG9ydC9pbXBvcnQgb2YgdGhlIEZELiBX
ZSBkbyAqbm90KiBhbGxvdyB0aGUgdXNlciB0bwo+ID4gPj4gbW1hcCB0aGUgZG1hLWJ1ZiBhcyB3
ZSBkbyBub3Qgc3VwcG9ydCBkaXJlY3QgSU8uIFNvIHRoZXJlIGlzIG5vIGFjY2Vzcwo+ID4gPj4g
dG8gdGhlc2UgcGFnZXMgdGhyb3VnaCB0aGUgdXNlcnNwYWNlLgo+ID4gPiBBcmd1YWJseSBtbWFw
aW5nIHRoZSBtZW1vcnkgaXMgYSBiZXR0ZXIgY2hvaWNlLCBhbmQgaXMgdGhlIGRpcmVjdGlvbgo+
ID4gPiB0aGF0IExvZ2FuJ3Mgc2VyaWVzIGdvZXMgaW4uIEhlcmUgdGhlIHVzZSBvZiBETUFCVUYg
d2FzIHNwZWNpZmljYWxseQo+ID4gPiBkZXNpZ25lZCB0byBhbGxvdyBoaXRsZXNzIHJldm9rYXRp
b24gb2YgdGhlIG1lbW9yeSwgd2hpY2ggdGhpcyBpc24ndAo+ID4gPiBldmVuIHVzaW5nLgo+ID4K
PiA+IFRoZSBtYWpvciBwcm9ibGVtIHdpdGggdGhpcyBhcHByb2FjaCBpcyB0aGF0IERNQS1idWYg
aXMgYWxzbyB1c2VkIGZvcgo+ID4gbWVtb3J5IHdoaWNoIGlzbid0IENQVSBhY2Nlc3NpYmxlLgoK
VGhhdCBpc24ndCBhbiBpc3N1ZSBoZXJlIGJlY2F1c2UgdGhlIG1lbW9yeSBpcyBvbmx5IGludGVu
ZGVkIHRvIGJlCnVzZWQgd2l0aCBQMlAgdHJhbnNmZXJzIHNvIGl0IG11c3QgYmUgQ1BVIGFjY2Vz
c2libGUuCgo+ID4gVGhhdCB3YXMgb25lIG9mIHRoZSByZWFzb25zIHdlIGRpZG4ndCBldmVuIGNv
bnNpZGVyZWQgdXNpbmcgdGhlIG1hcHBpbmcKPiA+IG1lbW9yeSBhcHByb2FjaCBmb3IgR1BVcy4K
CldlbGwsIG5vdyB3ZSBoYXZlIERFVklDRV9QUklWQVRFIG1lbW9yeSB0aGF0IGNhbiBtZWV0IHRo
aXMgbmVlZAp0b28uLiBKdXN0IG5vYm9keSBoYXMgd2lyZWQgaXQgdXAgdG8gaG1tX3JhbmdlX2Zh
dWx0KCkKCj4gPiA+IFNvIHlvdSBhcmUgdGFraW5nIHRoZSBoaXQgb2YgdmVyeSBsaW1pdGVkIGhh
cmR3YXJlIHN1cHBvcnQgYW5kIHJlZHVjZWQKPiA+ID4gcGVyZm9ybWFuY2UganVzdCB0byBzcXVl
ZXplIGludG8gRE1BQlVGLi4KPiAKPiBUaGFua3MgSmFzb24gZm9yIHRoZSBjbGFyaWZpY2F0aW9u
LCBidXQgSSBob25lc3RseSBwcmVmZXIgdG8gdXNlCj4gRE1BLUJVRiBhdCB0aGUgbW9tZW50Lgo+
IEl0IGdpdmVzIHVzIGp1c3Qgd2hhdCB3ZSBuZWVkIChldmVuIG1vcmUgdGhhbiB3aGF0IHdlIG5l
ZWQgYXMgeW91Cj4gcG9pbnRlZCBvdXQpLCBpdCBpcyAqYWxyZWFkeSogaW50ZWdyYXRlZCBhbmQg
dGVzdGVkIGluIHRoZSBSRE1BCj4gc3Vic3lzdGVtLCBhbmQgSSdtIGZlZWxpbmcgY29tZm9ydGFi
bGUgdXNpbmcgaXQgYXMgSSdtIHNvbWV3aGF0Cj4gZmFtaWxpYXIgd2l0aCBpdCBmcm9tIG15IEFN
RCBkYXlzLgoKWW91IHN0aWxsIGhhdmUgdGhlIGlzc3VlIHRoYXQgdGhpcyBwYXRjaCBpcyBkb2lu
ZyBhbGwgb2YgdGhpcyBQMlAKc3R1ZmYgd3JvbmcgLSBmb2xsb3dpbmcgdGhlIGFscmVhZHkgTkFL
J2QgQU1EIGFwcHJvYWNoLgoKPiBJJ2xsIGdvIGFuZCByZWFkIExvZ2FuJ3MgcGF0Y2gtc2V0IHRv
IHNlZSBpZiB0aGF0IHdpbGwgd29yayBmb3IgdXMgaW4KPiB0aGUgZnV0dXJlLiBQbGVhc2UgcmVt
ZW1iZXIsIGFzIERhbmllbCBzYWlkLCB3ZSBkb24ndCBoYXZlIHN0cnVjdCBwYWdlCj4gYmFja2lu
ZyBvdXIgZGV2aWNlIG1lbW9yeSwgc28gaWYgdGhhdCBpcyBhIHJlcXVpcmVtZW50IHRvIGNvbm5l
Y3QgdG8KPiBMb2dhbidzIHdvcmssIHRoZW4gSSBkb24ndCB0aGluayB3ZSB3aWxsIHdhbnQgdG8g
ZG8gaXQgYXQgdGhpcyBwb2ludC4KCkl0IGlzIHRyaXZpYWwgdG8gZ2V0IHRoZSBzdHJ1Y3QgcGFn
ZSBmb3IgYSBQQ0kgQkFSLgoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
