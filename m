Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C3C1D096F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 09:03:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C1E566086C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 07:03:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B251260988; Wed, 13 May 2020 07:03:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05B3360D70;
	Wed, 13 May 2020 07:02:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 12BDF6086C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 07:02:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F019D60D70; Wed, 13 May 2020 07:02:42 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id ADD816086C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 07:02:41 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id n5so12227884wmd.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 00:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=Dy8Jhh6UuIjYdQgEuvO0u3h8Ch6uEM4eGbltcbsMang=;
 b=B3+/xpjg6paI7ARgbVBFJzbvoRsJF56ZWjsY3LvVOU6mP9pfCobORx3US+rnvYLPZU
 HUL9sUzRwk5RC97hbaA7Cou2JLLEAxp+w/lz5xxOkvqgJKT8jj7zMRNAHQzhxq+L02ij
 McYt6QGxQIBWPGBxUtpljMGtb0w1PHl6dZFMzBiIDJsQqT2opZ7pWReMpku9fTDZkBJF
 a0o3Nmkf/VMugQc2m8WRUMU1WUFgKendSYvP4bZx6Z4lpERdMsp2zVjiFg0SOjdZM0e2
 6RPxwqPx8Ebscm6AaRzc5TktW/puXYT5fs/UBnQOgHCxFhv8MHm6piCYBFv1K0BRSFM5
 amUA==
X-Gm-Message-State: AGi0PuY/pAFc+oGTfGrv4aDa966iC5UoDM0nhtwAfzUVjlx5L9EGUgj4
 LnFRmKAMHN7/5tDoRSjEjX8=
X-Google-Smtp-Source: APiQypL6H5LiHY+WHN2lUhR0xRgoqcNlS21mxYwDK4aftjSqKO9Mfp2AQiBafBotsWqxQRILrAhvwQ==
X-Received: by 2002:a1c:9ad1:: with SMTP id
 c200mr19199796wme.147.1589353360875; 
 Wed, 13 May 2020 00:02:40 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id x17sm1053434wrp.71.2020.05.13.00.02.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 00:02:40 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-10-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <6cfd324e-0443-3a12-6a2c-25a546c68643@gmail.com>
Date: Wed, 13 May 2020 09:02:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200512085944.222637-10-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC 09/17] drm/amdgpu: use dma-fence
	annotations in cs_submit()
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

QW0gMTIuMDUuMjAgdW0gMTA6NTkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IFRoaXMgaXMgYSBi
aXQgdHJpY2t5LCBzaW5jZSAtPm5vdGlmaWVyX2xvY2sgaXMgaGVsZCB3aGlsZSBjYWxsaW5nCj4g
ZG1hX2ZlbmNlX3dhaXQgd2UgbXVzdCBlbnN1cmUgdGhhdCBhbHNvIHRoZSByZWFkIHNpZGUgKGku
ZS4KPiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZykgaXMgb24gdGhlIHNhbWUgc2lkZS4gSWYg
d2UgbWl4IHRoaXMgdXAKPiBsb2NrZGVwIGNvbXBsYWludHMsIGFuZCB0aGF0J3MgYWdhaW4gd2h5
IHdlIHdhbnQgdG8gaGF2ZSB0aGVzZQo+IGFubm90YXRpb25zLgo+Cj4gQSBuaWNlIHNpZGUgZWZm
ZWN0IG9mIHRoaXMgaXMgdGhhdCBiZWNhdXNlIG9mIHRoZSBmc19yZWNsYWltIHByaW1pbmcKPiBm
b3IgZG1hX2ZlbmNlX2VuYWJsZSBsb2NrZGVwIG5vdyBhdXRvbWF0aWNhbGx5IGNoZWNrcyBmb3Ig
dXMgdGhhdAo+IG5vdGhpbmcgaW4gaGVyZSBhbGxvY2F0ZXMgbWVtb3J5LCB3aXRob3V0IGV2ZW4g
cnVubmluZyBhbnkgdXNlcnB0cgo+IHdvcmtsb2Fkcy4KPgo+IENjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gQ2M6IGxp
bnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxt
YWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jIHwgNSArKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKPiBpbmRleCA3
NjUzZjYyYjFiMmQuLjZkYjNmM2M2MjliMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9jcy5jCj4gQEAgLTEyMTMsNiArMTIxMyw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2Nz
X3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKPiAgIAlzdHJ1Y3QgYW1kZ3B1X2pv
YiAqam9iOwo+ICAgCXVpbnQ2NF90IHNlcTsKPiAgIAlpbnQgcjsKPiArCWJvb2wgZmVuY2VfY29v
a2llOwo+ICAgCj4gICAJam9iID0gcC0+am9iOwo+ICAgCXAtPmpvYiA9IE5VTEw7Cj4gQEAgLTEy
MjcsNiArMTIyOCw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1
X2NzX3BhcnNlciAqcCwKPiAgIAkgKi8KPiAgIAltdXRleF9sb2NrKCZwLT5hZGV2LT5ub3RpZmll
cl9sb2NrKTsKPiAgIAo+ICsJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxp
bmcoKTsKPiArCj4gICAJLyogSWYgdXNlcnB0ciBhcmUgaW52YWxpZGF0ZWQgYWZ0ZXIgYW1kZ3B1
X2NzX3BhcnNlcl9ib3MoKSwgcmV0dXJuCj4gICAJICogLUVBR0FJTiwgZHJtSW9jdGwgaW4gbGli
ZHJtIHdpbGwgcmVzdGFydCB0aGUgYW1kZ3B1X2NzX2lvY3RsLgo+ICAgCSAqLwo+IEBAIC0xMjY0
LDEyICsxMjY3LDE0IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1
X2NzX3BhcnNlciAqcCwKPiAgIAlhbWRncHVfdm1fbW92ZV90b19scnVfdGFpbChwLT5hZGV2LCAm
ZnByaXYtPnZtKTsKPiAgIAo+ICAgCXR0bV9ldV9mZW5jZV9idWZmZXJfb2JqZWN0cygmcC0+dGlj
a2V0LCAmcC0+dmFsaWRhdGVkLCBwLT5mZW5jZSk7Cj4gKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxp
bmcoZmVuY2VfY29va2llKTsKCk1obSwgdGhpcyBjb3VsZCBjb21lIGVhcmxpZXIgaW4gdGhlb3J5
LiBFLmcuIGFmdGVyIHB1c2hpbmcgdGhlIGpvYiB0byAKdGhlIHNjaGVkdWxlci4KCkNocmlzdGlh
bi4KCj4gICAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKPiAgIAo+ICAg
CXJldHVybiAwOwo+ICAgCj4gICBlcnJvcl9hYm9ydDoKPiAgIAlkcm1fc2NoZWRfam9iX2NsZWFu
dXAoJmpvYi0+YmFzZSk7Cj4gKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2ll
KTsKPiAgIAltdXRleF91bmxvY2soJnAtPmFkZXYtPm5vdGlmaWVyX2xvY2spOwo+ICAgCj4gICBl
cnJvcl91bmxvY2s6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
