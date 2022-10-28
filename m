Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D808610BEF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 10:10:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96D763F5A6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 08:10:15 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	by lists.linaro.org (Postfix) with ESMTPS id 416753F4D7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 08:09:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 85.220.165.71 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de;
	dmarc=none
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1ooKRA-0007ju-0q; Fri, 28 Oct 2022 10:09:56 +0200
Message-ID: <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org,
	daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Fri, 28 Oct 2022 10:09:54 +0200
In-Reply-To: <20221020121316.3946-1-christian.koenig@amd.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 416753F4D7
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[85.220.165.71:from,2001:67c:670:201:5054:ff:fe8d:eefb:received];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ndufresne.ca,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:25394, ipnet:85.220.128.0/17, country:DE];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: WHMNPFLZ44EVESRTZRSXZBIEE7KOUZYI
X-Message-ID-Hash: WHMNPFLZ44EVESRTZRSXZBIEE7KOUZYI
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHMNPFLZ44EVESRTZRSXZBIEE7KOUZYI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpBbSBEb25uZXJzdGFnLCBkZW0gMjAuMTAuMjAyMiB1bSAxNDoxMyAr
MDIwMCBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+IEhpIGd1eXMsDQo+IA0KPiBhZnRlciBm
aW5kaW5nIHRoYXQgd2UgZXNzZW50aWFsbHkgaGF2ZSB0d28gc2VwYXJhdGUgd29ybGRzIGZvciBj
b2hlcmVudCBzaGFyaW5nDQo+IG9mIGJ1ZmZlciB0aHJvdWdoIERNQS1idWYgSSB0aG91Z2h0IEkg
d2lsbCB0YWNrbGUgdGhhdCBwcm9ibGVtIGEgYml0IGFuZCBhdA0KPiBsZWFzdCBhbGxvdyB0aGUg
ZnJhbWV3b3JrIHRvIHJlamVjdCBhdHRhY2htZW50cyB3aGljaCB3b24ndCB3b3JrLg0KPiANCj4g
U28gdGhvc2UgcGF0Y2hlcyBoZXJlIGFkZCBhIG5ldyBkbWFfY29oZXJlbnQgZmxhZyB0byBlYWNo
IERNQS1idWYgb2JqZWN0DQo+IHRlbGxpbmcgdGhlIGZyYW1ld29yayB0aGF0IGRldl9pc19kbWFf
Y29oZXJlbnQoKSBuZWVkcyB0byByZXR1cm4gdHJ1ZSBmb3IgYW4NCj4gaW1wb3J0aW5nIGRldmlj
ZSB0byBiZSBhYmxlIHRvIGF0dGFjaC4gU2luY2Ugd2Ugc2hvdWxkIGFsd2F5cyBoYXZlIGEgZmFs
bGJhY2sNCj4gcGF0aCB0aGlzIHNob3VsZCBnaXZlIHVzZXJzcGFjZSB0aGUgY2hhbmNlIHRvIHN0
aWxsIGtlZXAgdGhlIHVzZSBjYXNlIHdvcmtpbmcsDQo+IGVpdGhlciBieSBkb2luZyBhIENQVSBj
b3B5IGluc3RlYWQgb3IgcmV2ZXJzaW5nIHRoZSByb2xlcyBvZiBleHBvcnRlciBhbmQNCj4gaW1w
b3J0ZXIuDQo+IA0KVGhlIGZhbGxiYWNrIHdvdWxkIGxpa2VseSBiZSBhIENQVSBjb3B5IHdpdGgg
dGhlIGFwcHJvcHJpYXRlIGNhY2hlDQpmbHVzaGVzIGRvbmUgYnkgdGhlIGRldmljZSBkcml2ZXIs
IHdoaWNoIHdvdWxkIGJlIGEgbWFzc2l2IHBlcmZvcm1hbmNlDQppc3N1ZS4NCg0KPiBGb3IgRFJN
IGFuZCBtb3N0IFY0TDIgZGV2aWNlcyBJIHRoZW4gZmlsbCBpbiB0aGUgZG1hX2NvaGVyZW50IGZs
YWcgYmFzZWQgb24gdGhlDQo+IHJldHVybiB2YWx1ZSBvZiBkZXZfaXNfZG1hX2NvaGVyZW50KCku
IEV4cG9ydGluZyBkcml2ZXJzIGFyZSBhbGxvd2VkIHRvIGNsZWFyDQo+IHRoZSBmbGFnIGZvciB0
aGVpciBidWZmZXJzIGlmIHNwZWNpYWwgaGFuZGxpbmcgbGlrZSB0aGUgVVNXQyBmbGFnIGluIGFt
ZGdwdSBvcg0KPiB0aGUgdW5jYWNoZWQgYWxsb2NhdGlvbnMgZm9yIHJhZGVvbi9ub3V2ZWF1IGFy
ZSBpbiB1c2UuDQo+IA0KSSBkb24ndCB0aGluayB0aGUgVjRMMiBwYXJ0IHdvcmtzIGZvciBtb3N0
IEFSTSBzeXN0ZW1zLiBUaGUgZGVmYXVsdA0KdGhlcmUgaXMgZm9yIGRldmljZXMgdG8gYmUgbm9u
Y29oZXJlbnQgdW5sZXNzIGV4cGxpY2l0bHkgbWFya2VkDQpvdGhlcndpc2UuIEkgZG9uJ3QgdGhp
bmsgYW55IG9mIHRoZSAiZGV2aWNlcyIgd3JpdGluZyB0aGUgdmlkZW8gYnVmZmVycw0KaW4gY2Fj
aGVkIG1lbW9yeSB3aXRoIHRoZSBDUFUgZG8gdGhpcy4gV2hpbGUgd2UgY291bGQgcHJvYmFibHkg
bWFyaw0KdGhlbSBhcyBjb2hlcmVudCwgSSBkb24ndCB0aGluayB0aGlzIGlzIG1vdmluZyBpbiB0
aGUgcmlnaHQgZGlyZWN0aW9uLg0KDQo+IEFkZGl0aW9uYWwgdG8gdGhhdCBpbXBvcnRlcnMgY2Fu
IGFsc28gY2hlY2sgdGhlIGZsYWcgaWYgdGhleSBoYXZlIHNvbWUNCj4gbm9uLXNub29waW5nIG9w
ZXJhdGlvbnMgbGlrZSB0aGUgc3BlY2lhbCBzY2Fub3V0IGNhc2UgZm9yIGFtZGdwdSBmb3IgZXhh
bXBsZS4NCj4gDQo+IFRoZSBwYXRjaGVzIGFyZSBvbmx5IHNtb2tlIHRlc3RlZCBhbmQgdGhlIHNv
bHV0aW9uIGlzbid0IGlkZWFsLCBidXQgYXMgZmFyIGFzDQo+IEkgY2FuIHNlZSBzaG91bGQgYXQg
bGVhc3Qga2VlcCB0aGluZ3Mgd29ya2luZy4NCj4gDQpJIHdvdWxkIGxpa2UgdG8gc2VlIHRoaXMg
c29sdmVkIHByb3Blcmx5LiBXaGVyZSBJIHRoaW5rIHByb3Blcmx5IG1lYW5zDQp3ZSBtYWtlIHRo
aW5ncyB3b3JrIG9uIHN5c3RlbXMgd2l0aCBtaXhlZCBjb2hlcmVudC9ub25jb2hlcmVudCBtYXN0
ZXJzDQppbiB0aGUgc2FtZSB3YXkgdGhlIERNQSBBUEkgZG9lcyBvbiBzdWNoIHN5c3RlbXM6IGJ5
IGluc2VydGluZyB0aGUNCnByb3BlciBjYWNoZSBtYWludGVuYW5jZSBvcGVyYXRpb25zLg0KDQpJ
IGFsc28gdGhpbmsgdGhhdCB3ZSBzaG91bGQga2VlcCBpbiBtaW5kIHRoYXQgdGhlIHdvcmxkIGlz
IG1vdmluZyBpbnRvDQphIGRpcmVjdGlvbiB3aGVyZSBETUEgbWFzdGVycyBtYXkgbm90IG9ubHkg
c25vb3AgdGhlIENQVSBjYWNoZXMgKHdoYXQNCmlzIHRoZSBkZWZpbml0aW9uIG9mIGNhY2hlIGNv
aGVyZW50IG9uIHg4NiksIGJ1dCBhY3R1YWxseSB0YWtlIHBhcnQgaW4NCnRoZSBzeXN0ZW0gY29o
ZXJlbmNlIGFuZCBhcmUgYWJsZSB0byBoYXZlIHdyaXRlYmFjayBjYWNoZXMgZm9yIHNoYXJlZA0K
ZGF0YSBvbiB0aGVpciBvd24uIEkgY2FuIG9ubHkgc3BlY3VsYXRlLCBhcyBJIGhhdmVuJ3Qgc2Vl
biB0aGUgYW1kZ3B1DQpzaWRlIHlldCwgYnV0IEkgdGhpbmsgdGhpcyBwcm9wb3NhbCBpcyBtb3Zp
bmcgaW4gdGhlIG90aGVyIGRpcmVjdGlvbiBieQ0KYXNzdW1pbmcgYSBjZW50cmFsIHN5c3RlbSBj
YWNoZSwgd2hlcmUgdGhlIGltcG9ydGVyIGhhcyBzb21lIG1hZ2ljIHdheQ0KdG8gY2xlYW4gdGhp
cyBjZW50cmFsIGNhY2hlLg0KDQpTaW5jZSBJIGhhdmUgYSB2ZXN0ZWQgaW50ZXJlc3QgaW4gc2Vl
aW5nIFY0TDIgVVZDIGFuZCBub24tY29oZXJlbnQgR1BVDQpkbWEtYnVmIHNoYXJpbmcgd29yayBv
biBBUk0gc3lzdGVtcyBhbmQgc2VlbSB0byBob2xkIHNvbWUgc3Ryb25nDQpvcGluaW9ucyBvbiBo
b3cgdGhpcyBzaG91bGQgd29yaywgSSBndWVzcyBJIG5lZWQgdG8gbWFrZSBzb21lIHRpbWUNCmF2
YWlsYWJsZSB0byB0eXBlIGl0IHVwLCBzbyB3ZSBjYW4gZGlzY3VzcyBvdmVyIGNvZGVyIHJhdGhl
ciB0aGFuDQphYnN0cmFjdCBpZGVhcy4gSWYgSSBjb21lIHVwIHdpdGggc29tZXRoaW5nIHRoYXQg
d29ya3MgZm9yIG15IHVzZS1jYXNlcw0Kd291bGQgeW91IGJlIHVwIGZvciB0YWtpbmcgYSBzaG90
IGF0IGEgYW1kZ3B1IGltcGxlbWVudGF0aW9uPw0KDQpSZWdhcmRzLA0KTHVjYXMNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
