Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6M+sMbcI4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:05:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B85411537
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:05:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AD7840A20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:05:10 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 936403F789
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 05:15:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-df-693f996ad6f5
Date: Mon, 15 Dec 2025 14:15:17 +0900
From: Byungchul Park <byungchul@sk.com>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20251215051517.GB49936@system.software.com>
References: <20251205071855.72743-1-byungchul@sk.com>
 <20251205071855.72743-42-byungchul@sk.com>
 <cd65b963dd4edade3afb2e7d27eb33af1c62682e.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd65b963dd4edade3afb2e7d27eb33af1c62682e.camel@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0xbZRj2O+f0nNOGxkPF7ZMZWerM5oxszpG8iQanxnj+qDNmMXPZtMrJ
	aMYtZetW44WFS0sXVm1SAu2GxSIyWsY4DAQLG5d1gDrGFmQdFHSxGyVrWVIuTQcUW4iRf0+e
	97n9eFlS0UGnsuq844ImT5WjpGWULJRU+/Kx6jfUu7v8m8FQ+i0szBsoONfsomHF9gsDBrFa
	AiMXnQgiSzYSSjtXKVgxX2dgPjrBgOU0gspbZhLmLsVoeNgfRmC556dhxvMurE5OE3BnMYig
	3h8jwN+jRzC68IiGIcsZGkK3zhFQ7GimofK8SIGv0kyAU3wPJk0WCoamxiQg3vUgmB+9R0D3
	+EtQW1ZHQXWNj4Yp16oEbjtHKGie9hLw+/XBuMF6gYKJGyYGbv7aFN/7fYUEmmZ/jE9arCfh
	dK+DAvODMANtV0sRhOsWKRio6CFAH3DTcMM2LIGyuhYCRu+6EVwx/E3ATw2h+ADXGA3T1vME
	9C8ECfhtco6BVtFCQpsnwkCJLwPmnY002DxTzL59fKT0LMU3trYT/NJjM+L7g49IvqT1JN9p
	nWT4kivjDG8XT/CtDTt5R9cMwYuN5TQvhs0MX7sUIHljaJTgfWNdND87PMzs3/qJ7PUsIUet
	FTS7Mj+TZYeLfUzBD5tORd1pRcjEGZGUxdxe7K6JEUbEruHu2I4ETXEv4Dt/rtAJTHPbsdcb
	JROSFG4bHi9SG5GMJTnLczgYeEwlNE9xR/GlTguZwHIOcHfgKpkQKTg7wrWVLmb9kIyHqv1r
	BjIeulxzey2U5Lbgn2PsOp2Gi9tsa7SU4/HMGV2Cfpp7Hve0DxCJSMzNSnH94E1yff4zuLfB
	S32Hkq0bGqwbGqz/N1g3NNgR1YgU6jxtrkqdszc9W5enPpX+RX6uiOL/XP/18qEOFB75qA9x
	LFImyUcuZ6oVEpW2UJfbhzBLKlPkBm+ckmepdF8KmvxPNSdyhMI+tIWllJvlexZPZim4o6rj
	wjFBKBA0/10JVppahOz+sSMDHyt7VRWedmXq/b8yJg40ZRz09hzujs599cEhRyDS0vfQ/8+1
	tyVbteZXzzr/yB/MfTN4Qa93bJJ+uOyuaik3epMioWTfyuemgO/9Z++nPWn65kHxYdjV/MQ1
	RSCzqiBQlv5OtM5Vow1WlR8UO3S7Xxx6bX/TW7LLewS9PUVJFWarXtlJagpV/wI2aPotywMA
	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUxbZRTH89zn9t5LtcsFcTzZjDOdi2buReNMjlG3GZPxxDizxA/LFhOp
	2824AwppkVGNSqnName2rqZF2rG1KJVAHW/bFEldAxOdE0YZSMPLgKwyCEwMFrYWCrYsRr6c
	/M///M8v58MRcMaX3AZB1hZLOq0mX80pWeXbr5i2H6/cIz/fFdgKFvOnMDwaUcAfxiAL81EL
	C+ca/Bwk3N/zYGmuVMCvA+Us9FysRzA6b0Fwf9GNwdy6wkLC3slDNDbEg8OIYCXQicAZsmMI
	91zF4L9kZOCfxmUOpjvmEDjGIxxUTBlZmPV9gcA14eZh6udsuDfapoCVkbsMDCzMIPBFlhmI
	BE8iSDjz4EJ1S3Ld+TcHi103MVQ4ehB4x0cwzE2NIbjUeRtBoLacgz9tlzHciqyDvvlZDq47
	TnFwL3SOgb8aOfCUBxQQ+n0aQZXbjmBiMMCA6esGDpxVzSy0jv3IQ2h6iYFhp52B+ub9MOqb
	YOGGrZpJnptMNWWBu8LEJMskA47v2hiI+er4vTWI3jefZmldyxWGmnsTHPWf9yO6GLcjGq0x
	YWq2JduOmVlMP2s5QWtuzHA0Pt/P0cCCh6W/VRP6zedxhp7t2k5bXSP8gdcPK189KuXLJZJu
	5+4cZe6caZgvurC+NNa2qQydEa1IEIi4iwSWn7WiNIEVt5CB/gSX0pz4DAmHYzgVyRSfJoNl
	shUpBSw6niQzk3E2lXlMPEYaWx04pVUikMDkVZwKZYgeRLxOP/9wkE6uV0ZWF3ASunS+dxWK
	xY3k22Xhob2JmC67V+00kZKpU4aU/bi4mQSv/MLY0DrXGpBrDcj1P8i1BuRBbB3KlLUlBRo5
	/6Ud+rxcg1Yu3XGksKAZJV/V9/HS2R9Q9FZ2OxIFpH5UFW7bLWcoNCV6Q0E7IgJWZ6os4aSl
	OqoxfCjpCt/TfZAv6dvRRoFVZ6nePCjlZIjHNMVSniQVSbr/poyQtqEMXfvkq13vW2ZdQWuY
	dMefe6Ij54j13TdO9598ai5EFofEvvTgcPYd7519fnrxTJWye/Px2sOG17r3+uvWNyTe2jlo
	Gw9n5WiMRfv3NDnQOx/x3n1jL9tevG3sS1uY8Dy4+WDbCm1K9/Qe3PbIoWis9NqQ8W7Em1Vf
	LGsLa/UlP52wqVl9ruaFrVin1/wLMb4wZaYDAAA=
X-CFilter-Loop: Reflected
X-Spamd-Bar: -
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ECQ22E7SKYEXRJBQ3DMSHIOARLWD2SX7
X-Message-ID-Hash: ECQ22E7SKYEXRJBQ3DMSHIOARLWD2SX7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:42 +0000
CC: linux-kernel@vger.kernel.org, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-deve
 l@lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli
 @redhat.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.co
 m, mjguzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 41/42] SUNRPC: relocate struct rcu_head to the first field of struct rpc_xprt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ECQ22E7SKYEXRJBQ3DMSHIOARLWD2SX7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2938];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[sk.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,skhynix.com,linux-foundation.org,opensource.wdc.com,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,redhat.co,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,garyguo.net,protonmail.com,umich.edu];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[165];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kzalloc.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,sk.com:email]
X-Rspamd-Queue-Id: 59B85411537
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCBEZWMgMDUsIDIwMjUgYXQgMDQ6Mjc6NTJBTSAtMDUwMCwgSmVmZiBMYXl0b24gd3Jv
dGU6DQo+IE9uIEZyaSwgMjAyNS0xMi0wNSBhdCAxNjoxOCArMDkwMCwgQnl1bmdjaHVsIFBhcmsg
d3JvdGU6DQo+ID4gV2hpbGUgY29tcGlsaW5nIExpbnV4IGtlcm5lbCB3aXRoIERFUFQgb24sIHRo
ZSBmb2xsb3dpbmcgZXJyb3Igd2FzDQo+ID4gb2JzZXJ2ZWQ6DQo+ID4NCj4gPiAgICAuL2luY2x1
ZGUvbGludXgvcmN1cGRhdGUuaDoxMDg0OjE3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8N
Cj4gPiAgICDigJhCVUlMRF9CVUdfT07igJkNCj4gPiAgICAxMDg0IHwgQlVJTERfQlVHX09OKG9m
ZnNldG9mKHR5cGVvZigqKHB0cikpLCByaGYpID49IDQwOTYpOyAgICAgICAgXA0KPiA+ICAgICAg
ICAgfCBefn5+fn5+fn5+fn4NCj4gPiAgICAuL2luY2x1ZGUvbGludXgvcmN1cGRhdGUuaDoxMDQ3
OjI5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8NCj4gPiAgICAna3ZmcmVlX3JjdV9hcmdf
MicNCj4gPiAgICAxMDQ3IHwgI2RlZmluZSBrZnJlZV9yY3UocHRyLCByaGYpIGt2ZnJlZV9yY3Vf
YXJnXzIocHRyLCByaGYpDQo+ID4gICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+DQo+ID4gICAgbmV0L3N1bnJwYy94cHJ0LmM6MTg1Njo5OiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ2tmcmVlX3JjdScNCj4gPiAgICAxODU2IHwga2ZyZWVf
cmN1KHhwcnQsIHJjdSk7DQo+ID4gICAgICAgICB8IF5+fn5+fn5+fg0KPiA+ICAgICBDQyBuZXQv
a2NtL2tjbXByb2Mubw0KPiA+ICAgIG1ha2VbNF06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWls
ZDoyMDM6IG5ldC9zdW5ycGMveHBydC5vXSBFcnJvciAxDQo+ID4NCj4gPiBTaW5jZSBrZnJlZV9y
Y3UoKSBhc3N1bWVzICdvZmZzZXQgb2Ygc3RydWN0IHJjdV9oZWFkIGluIGEgcmN1LW1hbmFnZWQN
Cj4gPiBzdHJ1Y3QgPCA0MDk2JywgdGhlIG9mZmVzdCBvZiBzdHJ1Y3QgcmN1X2hlYWQgaW4gc3Ry
dWN0IHJwY194cHJ0IHNob3VsZA0KPiA+IG5vdCBleGNlZWQgNDA5NiBidXQgZG9lcywgZHVlIHRv
IHRoZSBkZWJ1ZyBpbmZvcm1hdGlvbiBhZGRlZCBieSBERVBULg0KPiA+DQo+ID4gUmVsb2NhdGUg
c3RydWN0IHJjdV9oZWFkIHRvIHRoZSBmaXJzdCBmaWVsZCBvZiBzdHJ1Y3QgcnBjX3hwcnQgZnJv
bSBhbg0KPiA+IGFyYml0cmFyeSBsb2NhdGlvbiB0byBhdm9pZCB0aGUgaXNzdWUgYW5kIG1lZXQg
dGhlIGFzc3VtcHRpb24uDQo+ID4NCj4gPiBSZXBvcnRlZC1ieTogWXVuc2VvbmcgS2ltIDx5c2tA
a3phbGxvYy5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQnl1bmdjaHVsIFBhcmsgPGJ5dW5nY2h1
bEBzay5jb20+DQo+ID4gLS0tDQo+ID4gIGluY2x1ZGUvbGludXgvc3VucnBjL3hwcnQuaCB8IDkg
KysrKysrKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0Lmgg
Yi9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmgNCj4gPiBpbmRleCBmNDZkMWZiOGY3MWEuLjY2
NmU0MmExN2EzMSAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmgN
Cj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmgNCj4gPiBAQCAtMjExLDYgKzIx
MSwxNCBAQCBlbnVtIHhwcnRfdHJhbnNwb3J0cyB7DQo+ID4NCj4gPiAgc3RydWN0IHJwY19zeXNm
c194cHJ0Ow0KPiA+ICBzdHJ1Y3QgcnBjX3hwcnQgew0KPiA+ICsgICAgIC8qDQo+ID4gKyAgICAg
ICogUGxhY2Ugc3RydWN0IHJjdV9oZWFkIHdpdGhpbiB0aGUgZmlyc3QgNDA5NiBieXRlcyBvZiBz
dHJ1Y3QNCj4gPiArICAgICAgKiBycGNfeHBydCBpZiBzaXplb2Yoc3RydWN0IHJwY194cHJ0KSA+
IDQwOTYsIHNvIHRoYXQNCj4gPiArICAgICAgKiBrZnJlZV9yY3UoKSBjYW4gc2ltcGx5IHdvcmsg
YXNzdW1pbmcgdGhhdC4gIFNlZSB0aGUgY29tbWVudA0KPiA+ICsgICAgICAqIGluIGtmcmVlX3Jj
dSgpLg0KPiA+ICsgICAgICAqLw0KPiA+ICsgICAgIHN0cnVjdCByY3VfaGVhZCAgICAgICAgIHJj
dTsNCj4gPiArDQo+ID4gICAgICAgc3RydWN0IGtyZWYgICAgICAgICAgICAga3JlZjsgICAgICAg
ICAgIC8qIFJlZmVyZW5jZSBjb3VudCAqLw0KPiA+ICAgICAgIGNvbnN0IHN0cnVjdCBycGNfeHBy
dF9vcHMgKm9wczsgICAgICAgICAvKiB0cmFuc3BvcnQgbWV0aG9kcyAqLw0KPiA+ICAgICAgIHVu
c2lnbmVkIGludCAgICAgICAgICAgIGlkOyAgICAgICAgICAgICAvKiB0cmFuc3BvcnQgaWQgKi8N
Cj4gPiBAQCAtMzE3LDcgKzMyNSw2IEBAIHN0cnVjdCBycGNfeHBydCB7DQo+ID4gICNpZiBJU19F
TkFCTEVEKENPTkZJR19TVU5SUENfREVCVUcpDQo+ID4gICAgICAgc3RydWN0IGRlbnRyeSAgICAg
ICAgICAgKmRlYnVnZnM7ICAgICAgICAgICAgICAgLyogZGVidWdmcyBkaXJlY3RvcnkgKi8NCj4g
PiAgI2VuZGlmDQo+ID4gLSAgICAgc3RydWN0IHJjdV9oZWFkICAgICAgICAgcmN1Ow0KPiA+ICAg
ICAgIGNvbnN0IHN0cnVjdCB4cHJ0X2NsYXNzICp4cHJ0X2NsYXNzOw0KPiA+ICAgICAgIHN0cnVj
dCBycGNfc3lzZnNfeHBydCAgICp4cHJ0X3N5c2ZzOw0KPiA+ICAgICAgIGJvb2wgICAgICAgICAg
ICAgICAgICAgIG1haW47IC8qbWFyayBpZiB0aGlzIGlzIHRoZSAxc3QgdHJhbnNwb3J0ICovDQo+
IA0KPiBTZWVtcyBmaW5lIHRvIG1lLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEplZmYgTGF5dG9uIDxq
bGF5dG9uQGtlcm5lbC5vcmc+DQoNClRoYW5rIHlvdSwgSmVmZi4NCg0KCUJ5dW5nY2h1bA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
