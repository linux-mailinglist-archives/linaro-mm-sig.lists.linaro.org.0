Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4BC2EF594
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Jan 2021 17:13:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90AAD607A0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Jan 2021 16:13:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7B0D160961; Fri,  8 Jan 2021 16:13:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD0D4608E6;
	Fri,  8 Jan 2021 16:12:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4379E607A0
 for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Jan 2021 16:12:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 24D12608E6; Fri,  8 Jan 2021 16:12:39 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by lists.linaro.org (Postfix) with ESMTPS id 40150607A0
 for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Jan 2021 16:12:35 +0000 (UTC)
IronPort-SDR: Vjpc27/EKDjola18GRN3KGhV3bokrO+/x6WWMT1+ULmk8tnIcmvP63w7GiaS3M5dyLHWe0oRdL
 bQI28tYrU9NQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="157395905"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="157395905"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 08:12:33 -0800
IronPort-SDR: JMbobQ7je7NHlqEgCJqr+/MvTBYSjiYikipnt+2BMt8dIYeeNWW8hzX84f1xJ/FHwBuwkoaUT5
 6Hcg9CKTDj0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="351723950"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jan 2021 08:12:33 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Jan 2021 08:12:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Jan 2021 08:12:32 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Fri, 8 Jan 2021 08:12:25 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, "sumit.semwal@linaro.org"
 <sumit.semwal@linaro.org>, "christian.koenig@amd.com"
 <christian.koenig@amd.com>, "airlied@redhat.com" <airlied@redhat.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "maarten.lankhorst@linux.intel.com"
 <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org"
 <mripard@kernel.org>, "kraxel@redhat.com" <kraxel@redhat.com>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>, "sean@poorly.run"
 <sean@poorly.run>, "eric@anholt.net" <eric@anholt.net>, "sam@ravnborg.org"
 <sam@ravnborg.org>
Thread-Topic: [PATCH v4 01/13] dma-buf: Add vmap_local and vnumap_local
 operations
Thread-Index: AQHW5aLP4hX76tQjY0SfdcD489sfwKod5bgg
Date: Fri, 8 Jan 2021 16:12:25 +0000
Message-ID: <39d9d40bf6284ef29c777776f9f2b5a3@intel.com>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-2-tzimmermann@suse.de>
In-Reply-To: <20210108094340.15290-2-tzimmermann@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>
Subject: Re: [Linaro-mm-sig] [PATCH v4 01/13] dma-buf: Add vmap_local and
 vnumap_local operations
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj5Gcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj5UaG9tYXMgWmltbWVy
bWFubgo+U2VudDogRnJpZGF5LCBKYW51YXJ5IDgsIDIwMjEgNDo0MyBBTQo+VG86IHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnOyBjaHJpc3RpYW4ua29lbmlnQGFtZC5jb207Cj5haXJsaWVkQHJlZGhh
dC5jb207IGRhbmllbEBmZndsbC5jaDsgbWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Owo+bXJpcGFyZEBrZXJuZWwub3JnOyBrcmF4ZWxAcmVkaGF0LmNvbTsgaGRlZ29lZGVAcmVkaGF0
LmNvbTsKPnNlYW5AcG9vcmx5LnJ1bjsgZXJpY0BhbmhvbHQubmV0OyBzYW1AcmF2bmJvcmcub3Jn
Cj5DYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD47IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7Cj52aXJ0dWFsaXphdGlvbkBsaXN0cy5saW51eC1mb3VuZGF0
aW9uLm9yZzsgbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOwo+VGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+OyBsaW51eC0KPm1lZGlhQHZnZXIua2VybmVsLm9yZwo+
U3ViamVjdDogW1BBVENIIHY0IDAxLzEzXSBkbWEtYnVmOiBBZGQgdm1hcF9sb2NhbCBhbmQgdm51
bWFwX2xvY2FsCj5vcGVyYXRpb25zCj4KPlRoZSBleGlzdGluZyBkbWEtYnVmIGNhbGxzIGRtYV9i
dWZfdm1hcCgpIGFuZCBkbWFfYnVmX3Z1bm1hcCgpIGFyZQo+YWxsb3dlZCB0byBwaW4gdGhlIGJ1
ZmZlciBvciBhY3F1aXJlIHRoZSBidWZmZXIncyByZXNlcnZhdGlvbiBvYmplY3QKPmxvY2suCj4K
PlRoaXMgaXMgYSBwcm9ibGVtIGZvciBjYWxsZXJzIHRoYXQgb25seSByZXF1aXJlIGEgc2hvcnQt
dGVybSBtYXBwaW5nCj5vZiB0aGUgYnVmZmVyIHdpdGhvdXQgdGhlIHBpbm5pbmcsIG9yIGNhbGxl
cnMgdGhhdCBoYXZlIHNwZWNpYWwgbG9ja2luZwo+cmVxdWlyZW1lbnRzLiBUaGVzZSBtYXkgc3Vm
ZmVyIGZyb20gdW5uZWNlc3Nhcnkgb3ZlcmhlYWQgb3IgaW50ZXJmZXJlCj53aXRoIHJlZ3VsYXIg
cGluIG9wZXJhdGlvbnMuCj4KPlRoZSBuZXcgaW50ZXJmYWNlcyBkbWFfYnVmX3ZtYXBfbG9jYWwo
KSwgZG1hX2J1Zl92dW5tYXBvX2xvY2FsKCksIGFuZAo+dGhlaXIgcnNwIGNhbGxiYWNrcyBpbiBz
dHJ1Y3QgZG1hX2J1Zl9vcHMgcHJvdmlkZSBhbiBhbHRlcm5hdGl2ZSB3aXRob3V0Cj5waW5uaW5n
IG9yIHJlc2VydmF0aW9uIGxvY2tpbmcuIENhbGxlcnMgYXJlIHJlc3BvbnNpYmxlIGZvciB0aGVz
ZQo+b3BlcmF0aW9ucy4KPgo+djQ6Cj4JKiB1cGRhdGUgZG9jdW1lbnRhdGlvbiAoRGFuaWVsKQo+
Cj5TaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4K
PlJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+U3Vn
Z2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+LS0tCj4g
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDgxCj4rKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgMzQgKysrKysrKysr
KysrKysrKwo+IDIgZmlsZXMgY2hhbmdlZCwgMTE1IGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
Cj5pbmRleCBiODQ2NTI0M2VjYTIuLjAxZjljNzRkOTdmYSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMKPisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPkBAIC0x
Mjk1LDYgKzEyOTUsODcgQEAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLAo+c3RydWN0IGRtYV9idWZfbWFwICptYXApCj4gfQo+IEVYUE9SVF9TWU1CT0xfR1BMKGRt
YV9idWZfdnVubWFwKTsKPgo+Ky8qKgo+KyAqIGRtYV9idWZfdm1hcF9sb2NhbCAtIENyZWF0ZSB2
aXJ0dWFsIG1hcHBpbmcgZm9yIHRoZSBidWZmZXIgb2JqZWN0IGludG8KPmtlcm5lbAo+KyAqIGFk
ZHJlc3Mgc3BhY2UuCj4rICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gdm1hcAo+KyAqIEBtYXA6
CVtvdXRdCXJldHVybnMgdGhlIHZtYXAgcG9pbnRlcgo+KyAqCj4rICogVW5saWtlIGRtYV9idWZf
dm1hcCgpIHRoaXMgaXMgYSBzaG9ydCB0ZXJtIG1hcHBpbmcgYW5kIHdpbGwgbm90IHBpbgo+KyAq
IHRoZSBidWZmZXIuIFRoZSBzdHJ1Y3QgZG1hX3Jlc3YgZm9yIHRoZSBAZG1hYnVmIG11c3QgYmUg
bG9ja2VkIHVudGlsCj4rICogZG1hX2J1Zl92dW5tYXBfbG9jYWwoKSBpcyBjYWxsZWQuCj4rICoK
PisgKiBSZXR1cm5zOgo+KyAqIDAgb24gc3VjY2Vzcywgb3IgYSBuZWdhdGl2ZSBlcnJubyBjb2Rl
IG90aGVyd2lzZS4KPisgKi8KPitpbnQgZG1hX2J1Zl92bWFwX2xvY2FsKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcAo+Km1hcCkKPit7Cj4rCXN0cnVjdCBkbWFfYnVm
X21hcCBwdHI7Cj4rCWludCByZXQgPSAwOwo+Kwo+KwlkbWFfYnVmX21hcF9jbGVhcihtYXApOwo+
Kwo+KwlpZiAoV0FSTl9PTighZG1hYnVmKSkKPisJCXJldHVybiAtRUlOVkFMOwo+Kwo+KwlkbWFf
cmVzdl9hc3NlcnRfaGVsZChkbWFidWYtPnJlc3YpOwo+Kwo+KwlpZiAoIWRtYWJ1Zi0+b3BzLT52
bWFwX2xvY2FsKQo+KwkJcmV0dXJuIC1FSU5WQUw7CgpZb3UgYXJlIGNsZWFyaW5nIHRoZSBtYXAs
IGFuZCB0aGVuIGRvaW5nIHRoZSBhYm92ZSBjaGVja3MuCgpJcyBpdCBvayB0byBjaGFuZ2UgdGhl
IG1hcCBpbmZvIGFuZCB0aGVuIGV4aXQgb24gZXJyb3I/CgpNaWtlCgo+KwltdXRleF9sb2NrKCZk
bWFidWYtPmxvY2spOwo+KwlpZiAoZG1hYnVmLT52bWFwcGluZ19jb3VudGVyKSB7Cj4rCQlkbWFi
dWYtPnZtYXBwaW5nX2NvdW50ZXIrKzsKPisJCUJVR19PTihkbWFfYnVmX21hcF9pc19udWxsKCZk
bWFidWYtPnZtYXBfcHRyKSk7Cj4rCQkqbWFwID0gZG1hYnVmLT52bWFwX3B0cjsKPisJCWdvdG8g
b3V0X3VubG9jazsKPisJfQo+Kwo+KwlCVUdfT04oZG1hX2J1Zl9tYXBfaXNfc2V0KCZkbWFidWYt
PnZtYXBfcHRyKSk7Cj4rCj4rCXJldCA9IGRtYWJ1Zi0+b3BzLT52bWFwX2xvY2FsKGRtYWJ1Ziwg
JnB0cik7Cj4rCWlmIChXQVJOX09OX09OQ0UocmV0KSkKPisJCWdvdG8gb3V0X3VubG9jazsKPisK
PisJZG1hYnVmLT52bWFwX3B0ciA9IHB0cjsKPisJZG1hYnVmLT52bWFwcGluZ19jb3VudGVyID0g
MTsKPisKPisJKm1hcCA9IGRtYWJ1Zi0+dm1hcF9wdHI7Cj4rCj4rb3V0X3VubG9jazoKPisJbXV0
ZXhfdW5sb2NrKCZkbWFidWYtPmxvY2spOwo+KwlyZXR1cm4gcmV0Owo+K30KPitFWFBPUlRfU1lN
Qk9MX0dQTChkbWFfYnVmX3ZtYXBfbG9jYWwpOwo+Kwo+Ky8qKgo+KyAqIGRtYV9idWZfdnVubWFw
X2xvY2FsIC0gVW5tYXAgYSB2bWFwIG9idGFpbmVkIGJ5Cj5kbWFfYnVmX3ZtYXBfbG9jYWwuCj4r
ICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gdnVubWFwCj4rICogQG1hcDoJW2luXQl2bWFwIHBv
aW50ZXIgdG8gdnVubWFwCj4rICoKPisgKiBSZWxlYXNlIGEgbWFwcGluZyBlc3RhYmxpc2hlZCB3
aXRoIGRtYV9idWZfdm1hcF9sb2NhbCgpLgo+KyAqLwo+K3ZvaWQgZG1hX2J1Zl92dW5tYXBfbG9j
YWwoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0Cj5kbWFfYnVmX21hcCAqbWFwKQo+K3sK
PisJaWYgKFdBUk5fT04oIWRtYWJ1ZikpCj4rCQlyZXR1cm47Cj4rCj4rCWRtYV9yZXN2X2Fzc2Vy
dF9oZWxkKGRtYWJ1Zi0+cmVzdik7Cj4rCj4rCUJVR19PTihkbWFfYnVmX21hcF9pc19udWxsKCZk
bWFidWYtPnZtYXBfcHRyKSk7Cj4rCUJVR19PTihkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIgPT0g
MCk7Cj4rCUJVR19PTighZG1hX2J1Zl9tYXBfaXNfZXF1YWwoJmRtYWJ1Zi0+dm1hcF9wdHIsIG1h
cCkpOwo+Kwo+KwltdXRleF9sb2NrKCZkbWFidWYtPmxvY2spOwo+KwlpZiAoLS1kbWFidWYtPnZt
YXBwaW5nX2NvdW50ZXIgPT0gMCkgewo+KwkJaWYgKGRtYWJ1Zi0+b3BzLT52dW5tYXBfbG9jYWwp
Cj4rCQkJZG1hYnVmLT5vcHMtPnZ1bm1hcF9sb2NhbChkbWFidWYsIG1hcCk7Cj4rCQlkbWFfYnVm
X21hcF9jbGVhcigmZG1hYnVmLT52bWFwX3B0cik7Cj4rCX0KPisJbXV0ZXhfdW5sb2NrKCZkbWFi
dWYtPmxvY2spOwo+K30KPitFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3Z1bm1hcF9sb2NhbCk7
Cj4rCj4gI2lmZGVmIENPTkZJR19ERUJVR19GUwo+IHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19z
aG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQo+IHsKPmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj5pbmRleCA2
Mjg2ODFiZjZjOTkuLmFlZWQ3NTRiNTQ2NyAxMDA2NDQKPi0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oCj4rKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+QEAgLTI2NCw2ICsyNjQsMzgg
QEAgc3RydWN0IGRtYV9idWZfb3BzIHsKPgo+IAlpbnQgKCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7Cj4gCXZvaWQgKCp2dW5tYXApKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcAo+Km1hcCk7Cj4rCj4rCS8qKgo+
KwkgKiBAdm1hcF9sb2NhbDoKPisJICoKPisJICogQ3JlYXRlcyBhIHZpcnR1YWwgbWFwcGluZyBm
b3IgdGhlIGJ1ZmZlciBpbnRvIGtlcm5lbCBhZGRyZXNzIHNwYWNlLgo+KwkgKgo+KwkgKiBUaGlz
IGNhbGxiYWNrIGVzdGFibGlzaGVzIHNob3J0LXRlcm0gbWFwcGluZ3MgZm9yIHNpdHVhdGlvbnMg
d2hlcmUKPisJICogY2FsbGVycyBvbmx5IHVzZSB0aGUgYnVmZmVyIGZvciBhIGJvdW5kZWQgYW1v
dW50IG9mIHRpbWU7IHN1Y2ggYXMKPisJICogdXBkYXRlcyB0byB0aGUgZnJhbWVidWZmZXIgb3Ig
cmVhZGluZyBiYWNrIGNvbnRhaW5lZCBpbmZvcm1hdGlvbi4KPisJICogSW4gY29udHJhc3QgdG8g
dGhlIHJlZ3VsYXIgQHZtYXAgY2FsbGJhY2ssIHZtYXBfbG9jYWwgZG9lcyBuZXZlcgo+cGluCj4r
CSAqIHRoZSBidWZmZXIgdG8gYSBzcGVjaWZpYyBkb21haW4gb3IgYWNxdWlyZSB0aGUgYnVmZmVy
J3MgcmVzZXJ2YXRpb24KPisJICogbG9jay4KPisJICoKPisJICogVGhpcyBpcyBjYWxsZWQgd2l0
aCB0aGUgJmRtYV9idWYucmVzdiBvYmplY3QgbG9ja2VkLiBDYWxsZXJzIG11c3QKPmhvbGQKPisJ
ICogdGhlIGxvY2sgdW50aWwgYWZ0ZXIgcmVtb3ZpbmcgdGhlIG1hcHBpbmcgd2l0aCBAdnVubWFw
X2xvY2FsLgo+KwkgKgo+KwkgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgo+KwkgKgo+Kwkg
KiBSZXR1cm5zOgo+KwkgKgo+KwkgKiAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBj
b2RlIG9uIGZhaWx1cmUuCj4rCSAqLwo+KwlpbnQgKCp2bWFwX2xvY2FsKShzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAKPiptYXApOwo+Kwo+KwkvKioKPisJICogQHZ1
bm1hcF9sb2NhbDoKPisJICoKPisJICogUmVtb3ZlcyBhIHZpcnR1YWwgbWFwcGluZyB0aGF0IHdh
cyBlc3RhYmxpc2hlZCBieSBAdm1hcF9sb2NhbC4KPisJICoKPisJICogVGhpcyBjYWxsYmFjayBp
cyBvcHRpb25hbC4KPisJICovCj4rCXZvaWQgKCp2dW5tYXBfbG9jYWwpKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcAo+Km1hcCk7Cj4gfTsKPgo+IC8qKgo+QEAgLTUw
MSw0ICs1MzMsNiBAQCBpbnQgZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICosIHN0cnVjdAo+
dm1fYXJlYV9zdHJ1Y3QgKiwKPiAJCSB1bnNpZ25lZCBsb25nKTsKPiBpbnQgZG1hX2J1Zl92bWFw
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiB2b2lk
IGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21h
cAo+Km1hcCk7Cj4raW50IGRtYV9idWZfdm1hcF9sb2NhbChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LCBzdHJ1Y3QgZG1hX2J1Zl9tYXAKPiptYXApOwo+K3ZvaWQgZG1hX2J1Zl92dW5tYXBfbG9jYWwo
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0Cj5kbWFfYnVmX21hcCAqbWFwKTsKPiAjZW5k
aWYgLyogX19ETUFfQlVGX0hfXyAqLwo+LS0KPjIuMjkuMgo+Cj5fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
