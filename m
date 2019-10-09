Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D3D10E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Oct 2019 16:10:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DBA3618D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Oct 2019 14:10:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F41CE61928; Wed,  9 Oct 2019 14:10:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 776D0618E3;
	Wed,  9 Oct 2019 14:09:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F0CF3618D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Oct 2019 14:09:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D3E50618E3; Wed,  9 Oct 2019 14:09:18 +0000 (UTC)
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by lists.linaro.org (Postfix) with ESMTPS id 5D05A618D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Oct 2019 14:09:17 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id h33so2130492edh.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Oct 2019 07:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=Ggm5FnPBWudwKM7bMG2DlNAhhZbMe/QrjNBGIC21iLE=;
 b=YzHHbgxk4c4y7oTwYuFVQG2d5OSrs53BfyasWoK8tMlk0Zbc183zDlQoVmvVewqpLC
 ZSZkIP1ajfik/sCv8af8K2qHDC3o+IFvgXi2/+Cqv1jD2ibQ+LxUM5ru5I/neaseamQK
 Zmn8oU6ay1wPx0dJtUuZWtSFeQHdbNYPAS082KJPiNLejZp+xgkQHLWih8Uxg7gaM7x2
 kOB2gliZdFiI3+TPNuUVykG8q9shNudoeitFmNFQARndOIf2rOOeVJB7E0Hto010el7I
 qIaZlxoDK2A0H0HmZ9cJbcIabLmb4e35irWcoCBZpybNAkoprjCl8FrfDjQK2toolO5c
 0VAw==
X-Gm-Message-State: APjAAAXQrkItd8IpkP3LvB718My/dtR8eFZPTfKsUF0ZvboyVaL3rLm7
 iX1bZyO7CRFfLRXBH2/o/y3uyA==
X-Google-Smtp-Source: APXvYqzkirb8on6ORe6NpqSckThXHb3Tav3Cj0WPhAo5jbAa/jP+L4b2aIMdTn9K+fFgrnr9a9Um2w==
X-Received: by 2002:a17:906:fcac:: with SMTP id
 qw12mr2982663ejb.31.1570630156129; 
 Wed, 09 Oct 2019 07:09:16 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id t22sm375873edd.79.2019.10.09.07.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 07:09:15 -0700 (PDT)
Date: Wed, 9 Oct 2019 16:09:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20191009140912.GY16989@phenom.ffwll.local>
References: <20190829142917.13058-1-christian.koenig@amd.com>
 <20190829142917.13058-3-christian.koenig@amd.com>
 <20191008092552.GG16989@phenom.ffwll.local>
 <d36c1631-1262-8c73-e62b-bbbddb708f1e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d36c1631-1262-8c73-e62b-bbbddb708f1e@gmail.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] drm/ttm: use the parent resv for
	ghost objects v2
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

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDM6MTA6MDlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAwOC4xMC4xOSB1bSAxMToyNSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBPbiBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwNDoyOToxNVBNICswMjAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOgo+ID4gPiBUaGlzIHdheSB3ZSBjYW4gZXZlbiBwaXBlbGluZSBpbXBvcnRlZCBC
TyBldmljdGlvbnMuCj4gPiA+IAo+ID4gPiB2MjogTGltaXQgdGhpcyB0byBvbmx5IGNhc2VzIHdo
ZW4gdGhlIHBhcmVudCBvYmplY3QgdXNlcyBhIHNlcGFyYXRlCj4gPiA+ICAgICAgcmVzZXJ2YXRp
b24gb2JqZWN0IGFzIHdlbGwuIFRoaXMgZml4ZXMgYW5vdGhlciBPT00gcHJvYmxlbS4KPiA+ID4g
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiA+IFNpbmNlIEkgcmVhZCBxdWl0ZSBhIGJpdCBvZiB0dG0gSSBmaWd1cmVkIEkn
bGwgcmV2aWV3IHRoaXMgdG9vLCBidXQgSSdtCj4gPiB0b3RhbGx5IGxvc3QuIEFuZCBnaXQgYmxh
bWUgZ2l2ZXMgbWUgYXQgYmVzdCBjb21taXRzIHdpdGggb25lLWxpbmVyIGNvbW1pdAo+ID4gbWVz
c2FnZXMsIGFuZCB0aGUgZG9jcyBhcmVuJ3QgZXhwbGFpbmluZyBtdWNoIGF0IGFsbCBlaXRoZXIg
KGFuZCBnZW5lcmFsbHkKPiA+IHRoZXkgZGlkbid0IGdldCB1cGRhdGVkIGF0IGFsbCB3aXRoIGFs
bCB0aGUgY2hhbmdlcyBpbiB0aGUgcGFzdCB5ZWFycykuCj4gPiAKPiA+IEkgaGF2ZSBhIHZhZ3Vl
IGlkZWEgb2Ygd2hhdCB5b3UncmUgZG9pbmcgaGVyZSwgYnV0IG5vdCBlbm91Z2ggdG8gZG8gcmV2
aWV3Cj4gPiB3aXRoIGFueSBjb25maWRlbmNlLiBBbmQgZnJvbSBvdGhlciB0dG0gcGF0Y2hlcyBm
cm9tIGFtZCBpdCBmZWVscyBhIGxvdAo+ID4gbGlrZSB3ZSBoYXZlIGVzc2VudGlhbGx5IGEgYnVz
IGZhY3RvciBvZiAxIGZvciBhbGwgdGhpbmdzIHR0bSA6LS8KPiAKPiBZZWFoLCB0aGF0J3Mgb25l
IG9mIGEgY291cGxlIG9mIHJlYXNvbnMgd2h5IEkgd2FudCB0byBnZXQgcmlkIG9mIFRUTSBpbiB0
aGUKPiBsb25nIHRlcm0uCj4gCj4gQmFzaWNhbGx5IHRoaXMgaXMgYSBidWcgZml4IGZvciBkZWxh
eSBmcmVlaW5nIHR0bSBvYmplY3RzLiBXaGVuIHdlIGhhbmcgdGhlCj4gdHRtIG9iamVjdCBvbiBh
IGdob3N0IG9iamVjdCB0byBiZSBmcmVlZCBhbmQgdGhlIHR0bSBvYmplY3QgaXMgYW4gaW1wb3J0
ZWQKPiBETUEtYnVmIHdlIHJ1biBpbnRvIHRoZSBwcm9ibGVtIHRoYXQgd2Ugd2FudCB0byBkcm9w
IHRoZSBtYXBwaW5nLCBidXQgaGF2ZQo+IHRoZSB3cm9uZyBsb2NrIHRha2VuICh0aGUgbG9jayBv
ZiB0aGUgZ2hvc3QgYW5kIG5vdCBvZiB0aGUgcGFyZW50KS4KCkdvdCBpbnRyaWd1ZWQsIGRpZCBz
b21lIG1vcmUgZGlnZ2luZywgSSBndWVzcyB0aGUgYnVnZml4IHBhcnQgaXMgcmVsYXRlZAp0bzoK
CmNvbW1pdCA4NDFlNzYzYjQwNzY0YTc2OTlhZTA3ZjRjYjE5MjFhZjYyZDYzMTZkCkF1dGhvcjog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpEYXRlOiAgIFRodSBK
dWwgMjAgMjA6NTU6MDYgMjAxNyArMDIwMAoKICAgIGRybS90dG06IGluZGl2aWR1YWxpemUgQk8g
cmVzZXJ2YXRpb24gb2JqIHdoZW4gdGhleSBhcmUgZnJlZWQKCmFuZCB0aGF0J3Mgd2h5IHlvdSBz
d2l0Y2ggZXZlcnl0aGluZyBvdmVyIHRvIHVzZWluZyBfcmVzdiBpbnN0ZWFkIG9mIHRoZQpwb2lu
dGVyLiBCdXQgdGhlbiBJIHN0aWxsIGRvbid0IGZvbGxvdyB0aGUgZGV0YWlscyAuLi4KCj4gCgo+
IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+IAo+ID4gLURhbmllbAo+ID4gCj4gPiA+IC0tLQo+ID4g
PiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyB8IDE2ICsrKysrKysrKy0tLS0t
LS0KPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0
aWwuYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwo+ID4gPiBpbmRleCBmZTgx
YzU2NWU3ZWYuLjJlYmU5ZmU3ZjZjOCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fYm9fdXRpbC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
X3V0aWwuYwo+ID4gPiBAQCAtNTE3LDcgKzUxNyw5IEBAIHN0YXRpYyBpbnQgdHRtX2J1ZmZlcl9v
YmplY3RfdHJhbnNmZXIoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPiA+ID4gICAJa3Jl
Zl9pbml0KCZmYm8tPmJhc2Uua3JlZik7Cj4gPiA+ICAgCWZiby0+YmFzZS5kZXN0cm95ID0gJnR0
bV90cmFuc2ZlcmVkX2Rlc3Ryb3k7Cj4gPiA+ICAgCWZiby0+YmFzZS5hY2Nfc2l6ZSA9IDA7Cj4g
PiA+IC0JZmJvLT5iYXNlLmJhc2UucmVzdiA9ICZmYm8tPmJhc2UuYmFzZS5fcmVzdjsKPiA+ID4g
KwlpZiAoYm8tPmJhc2UucmVzdiA9PSAmYm8tPmJhc2UuX3Jlc3YpCj4gPiA+ICsJCWZiby0+YmFz
ZS5iYXNlLnJlc3YgPSAmZmJvLT5iYXNlLmJhc2UuX3Jlc3Y7CgpJIGdvdCBjb25mdXNlZCBhIGJp
dCBhdCBmaXJzdCwgdW50aWwgSSBzcG90dGVkIHRoZQoKCWZiby0+YmFzZSA9ICpibzsKCnNvbWV3
aGVyZSBhYm92ZS4gU28gSSB0aGluayB0aGF0IHBhcnQgbWFrZXMgc2Vuc2UsIHRvZ2V0aGVyIHdp
dGggdGhlIGFib3ZlCmNpdGVkIHBhdGNoLiBJIHRoaW5rIGF0IGxlYXN0LCBjb25maWRlbmNlIG9u
IHRoaXMgaXMgdmVyeSBsb3cgLi4uCgo+ID4gPiArCj4gPiA+ICAgCWRtYV9yZXN2X2luaXQoZmJv
LT5iYXNlLmJhc2UucmVzdik7Cj4gPiA+ICAgCXJldCA9IGRtYV9yZXN2X3RyeWxvY2soZmJvLT5i
YXNlLmJhc2UucmVzdik7CgpTaG91bGRuJ3QgdGhpcyBiZSBzd2l0Y2hlZCBvdmVyIHRvIF9yZXN2
IHRvbz8gT3RoZXJ3aXNlIGZlZWxzIGxpa2UKdW5iYWxhbmNlZCBsb2NraW5nLgoKPiA+ID4gICAJ
V0FSTl9PTighcmV0KTsKPiA+ID4gQEAgLTcxNiw3ICs3MTgsNyBAQCBpbnQgdHRtX2JvX21vdmVf
YWNjZWxfY2xlYW51cChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+ID4gPiAgIAkJaWYg
KHJldCkKPiA+ID4gICAJCQlyZXR1cm4gcmV0Owo+ID4gPiAtCQlkbWFfcmVzdl9hZGRfZXhjbF9m
ZW5jZShnaG9zdF9vYmotPmJhc2UucmVzdiwgZmVuY2UpOwo+ID4gPiArCQlkbWFfcmVzdl9hZGRf
ZXhjbF9mZW5jZSgmZ2hvc3Rfb2JqLT5iYXNlLl9yZXN2LCBmZW5jZSk7Cj4gPiA+ICAgCQkvKioK
PiA+ID4gICAJCSAqIElmIHdlJ3JlIG5vdCBtb3ZpbmcgdG8gZml4ZWQgbWVtb3J5LCB0aGUgVFRN
IG9iamVjdAo+ID4gPiBAQCAtNzI5LDcgKzczMSw3IEBAIGludCB0dG1fYm9fbW92ZV9hY2NlbF9j
bGVhbnVwKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4gPiA+ICAgCQllbHNlCj4gPiA+
ICAgCQkJYm8tPnR0bSA9IE5VTEw7Cj4gPiA+IC0JCXR0bV9ib191bnJlc2VydmUoZ2hvc3Rfb2Jq
KTsKPiA+ID4gKwkJZG1hX3Jlc3ZfdW5sb2NrKCZnaG9zdF9vYmotPmJhc2UuX3Jlc3YpOwo+ID4g
PiAgIAkJdHRtX2JvX3B1dChnaG9zdF9vYmopOwo+ID4gPiAgIAl9Cj4gPiA+IEBAIC03NzIsNyAr
Nzc0LDcgQEAgaW50IHR0bV9ib19waXBlbGluZV9tb3ZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVj
dCAqYm8sCj4gPiA+ICAgCQlpZiAocmV0KQo+ID4gPiAgIAkJCXJldHVybiByZXQ7Cj4gPiA+IC0J
CWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKGdob3N0X29iai0+YmFzZS5yZXN2LCBmZW5jZSk7Cj4g
PiA+ICsJCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKCZnaG9zdF9vYmotPmJhc2UuX3Jlc3YsIGZl
bmNlKTsKPiA+ID4gICAJCS8qKgo+ID4gPiAgIAkJICogSWYgd2UncmUgbm90IG1vdmluZyB0byBm
aXhlZCBtZW1vcnksIHRoZSBUVE0gb2JqZWN0Cj4gPiA+IEBAIC03ODUsNyArNzg3LDcgQEAgaW50
IHR0bV9ib19waXBlbGluZV9tb3ZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4gPiA+
ICAgCQllbHNlCj4gPiA+ICAgCQkJYm8tPnR0bSA9IE5VTEw7Cj4gPiA+IC0JCXR0bV9ib191bnJl
c2VydmUoZ2hvc3Rfb2JqKTsKPiA+ID4gKwkJZG1hX3Jlc3ZfdW5sb2NrKCZnaG9zdF9vYmotPmJh
c2UuX3Jlc3YpOwoKSSBndWVzcyBkcm9wcGluZyB0aGUgbHJ1IHBhcnQgaGVyZSAoYXNpZGUgZnJv
bSBzd2l0Y2hpbmcgZnJvbSAtPnJlc3YgdG8KLT5fcmVzdiwgd2hpY2ggaXMgeW91ciBidWdmaXgg
SSB0aGluaykgZG9lc24ndCBtYXR0ZXIgc2luY2UgdGhlIGdob3N0Cm9iamVjdCBnb3QgYWxsIGNs
ZWFyZWQgdXAgYW5kIGlzbid0IG9uIGFueSBsaXN0cyBhbnl3YXk/IE90b2ggaG93IGRvZXMgaXQK
d29yayB0aGVuIC4uLgoKTm90IGNsZWFyIHRvIG1lIHdoeSB0aGlzIGlzIHNhZmUuCgo+ID4gPiAg
IAkJdHRtX2JvX3B1dChnaG9zdF9vYmopOwo+ID4gPiAgIAl9IGVsc2UgaWYgKGZyb20tPmZsYWdz
ICYgVFRNX01FTVRZUEVfRkxBR19GSVhFRCkgewo+ID4gPiBAQCAtODQxLDcgKzg0Myw3IEBAIGlu
dCB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZyhzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQo+
ID4gPiAgIAlpZiAocmV0KQo+ID4gPiAgIAkJcmV0dXJuIHJldDsKPiA+ID4gLQlyZXQgPSBkbWFf
cmVzdl9jb3B5X2ZlbmNlcyhnaG9zdC0+YmFzZS5yZXN2LCBiby0+YmFzZS5yZXN2KTsKPiA+ID4g
KwlyZXQgPSBkbWFfcmVzdl9jb3B5X2ZlbmNlcygmZ2hvc3QtPmJhc2UuX3Jlc3YsIGJvLT5iYXNl
LnJlc3YpOwo+ID4gPiAgIAkvKiBMYXN0IHJlc29ydCwgd2FpdCBmb3IgdGhlIEJPIHRvIGJlIGlk
bGUgd2hlbiB3ZSBhcmUgT09NICovCj4gPiA+ICAgCWlmIChyZXQpCj4gPiA+ICAgCQl0dG1fYm9f
d2FpdChibywgZmFsc2UsIGZhbHNlKTsKPiA+ID4gQEAgLTg1MCw3ICs4NTIsNyBAQCBpbnQgdHRt
X2JvX3BpcGVsaW5lX2d1dHRpbmcoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPiA+ID4g
ICAJYm8tPm1lbS5tZW1fdHlwZSA9IFRUTV9QTF9TWVNURU07Cj4gPiA+ICAgCWJvLT50dG0gPSBO
VUxMOwo+ID4gPiAtCXR0bV9ib191bnJlc2VydmUoZ2hvc3QpOwo+ID4gPiArCWRtYV9yZXN2X3Vu
bG9jaygmZ2hvc3QtPmJhc2UuX3Jlc3YpOwo+ID4gPiAgIAl0dG1fYm9fcHV0KGdob3N0KTsKPiA+
ID4gICAJcmV0dXJuIDA7Cj4gPiA+IC0tIAo+ID4gPiAyLjE3LjEKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
