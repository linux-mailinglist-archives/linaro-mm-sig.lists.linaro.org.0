Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJXZOif34GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 916B040FCE9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A42FB404DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:50:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id 4D6FD3F79B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 04:48:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Cw6bxD4J;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761540517; x=1793076517;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=dcJfrfbbJKLgDXeqgyiqrwlYVG99j0yxZuYFoxzr9/s=;
  b=Cw6bxD4JCdJsY3nrCSH0ZioTIzXoqQKbn46RVixeQ9LMBTeU2uZZp3Xz
   I9HGlGRwCK0x1KYS53awENBodVbA3hWwHmHAhqXSQgqYVZYEG7Egob3Kl
   MD6BY857Akiqu0xeLKllTTcgWPH+McS1R+o7iJKsSMv5aPSPEUbUZxNEi
   r3NHoWeyjOAbY6CHpi5xv+hnGyrMxwQT/wsVA14OjuZnet/ZLscstyvFy
   jKrzNJ1BSwDBRH+RRuZsa6aESgw/M1gLNN0ZpF0kd4u5EA5Vb0kAFWkwe
   HrnfgJiv8liS4acxWAc9Z7B5LD5r2J9OSrE1EpAWiRmLS7NoDKHRlCgHv
   A==;
X-CSE-ConnectionGUID: BbRujovNSqCjxgE5Zmzwkg==
X-CSE-MsgGUID: Rv5OTICWSvSUwQo6j8YwIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75058933"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="75058933"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:36 -0700
X-CSE-ConnectionGUID: zDv0DU/CS7OgJV32f0q+Lw==
X-CSE-MsgGUID: Lh+c1ypASha8wGWpxj+JBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="188992972"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:36 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Sun, 26 Oct 2025 21:44:12 -0700
Message-ID: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spamd-Bar: ------
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LOLRDM7ABZJOFOY2QRM3L7V5PY2F2TWQ
X-Message-ID-Hash: LOLRDM7ABZJOFOY2QRM3L7V5PY2F2TWQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:22 +0000
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leonro@nvidia.com>, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Matthew Brost <matthew.brost@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 0/8] dma-buf: Add support for mapping dmabufs via interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LOLRDM7ABZJOFOY2QRM3L7V5PY2F2TWQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[4114];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:mid,intel.com:email,linaro.org:email,nvidia.com:email,amd.com:email,ffwll.ch:email]
X-Rspamd-Queue-Id: 916B040FCE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SW4gYSB0eXBpY2FsIGRtYS1idWYgdXNlIGNhc2UsIGEgZG1hYnVmIGV4cG9ydGVyIG1ha2VzIGl0
cyBidWZmZXINCmJ1ZmZlciBhdmFpbGFibGUgdG8gYW4gaW1wb3J0ZXIgYnkgbWFwcGluZyBpdCB1
c2luZyBETUEgQVBJcw0Kc3VjaCBhcyBkbWFfbWFwX3NndGFibGUoKSBvciBkbWFfbWFwX3Jlc291
cmNlKCkuIEhvd2V2ZXIsIHRoaXMNCmlzIG5vdCBkZXNpcmFibGUgaW4gc29tZSBjYXNlcyB3aGVy
ZSB0aGUgZXhwb3J0ZXIgYW5kIGltcG9ydGVyDQphcmUgZGlyZWN0bHkgY29ubmVjdGVkIHZpYSBh
IHBoeXNpY2FsIG9yIHZpcnR1YWwgbGluayAob3INCmludGVyY29ubmVjdCkgYW5kIHRoZSBpbXBv
cnRlciBjYW4gYWNjZXNzIHRoZSBidWZmZXIgd2l0aG91dA0KaGF2aW5nIGl0IERNQSBtYXBwZWQu
DQoNClNvLCB0byBhZGRyZXNzIHRoaXMgc2NlbmFyaW8sIHRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMg
QVBJcyB0byBtYXAvDQp1bm1hcCBkbWFidWZzIHZpYSBpbnRlcmNvbm5lY3RzIGFuZCBhbHNvIHBy
b3ZpZGVzIGEgaGVscGVyIHRvDQppZGVudGlmeSB0aGUgZmlyc3QgY29tbW9uIGludGVyY29ubmVj
dCBiZXR3ZWVuIHRoZSBleHBvcnRlciBhbmQNCmltcG9ydGVyLiBGdXJ0aGVybW9yZSwgdGhpcyBw
YXRjaCBzZXJpZXMgYWxzbyBhZGRzIHN1cHBvcnQgZm9yDQpJT1YgaW50ZXJjb25uZWN0IGluIHRo
ZSB2ZmlvLXBjaSBkcml2ZXIgYW5kIEludGVsIFhlIGRyaXZlci4NCg0KVGhlIElPViBpbnRlcmNv
bm5lY3QgaXMgYSB2aXJ0dWFsIGludGVyY29ubmVjdCBiZXR3ZWVuIGFuIFNSSU9WDQpwaHlzaWNh
bCBmdW5jdGlvbiAoUEYpIGFuZCBpdHMgdmlydHVhbCBmdW5jdGlvbnMgKFZGcykuIEFuZCwgZm9y
DQp0aGUgSU9WIGludGVyY29ubmVjdCwgdGhlIGFkZHJlc3NlcyBhc3NvY2lhdGVkIHdpdGggYSBi
dWZmZXIgYXJlDQpzaGFyZWQgdXNpbmcgYW4geGFycmF5IChpbnN0ZWFkIG9mIGFuIHNnX3RhYmxl
KSB0aGF0IGlzIHBvcHVsYXRlZA0Kd2l0aCBlbnRyaWVzIG9mIHR5cGUgc3RydWN0IHJhbmdlLiAN
Cg0KVGhlIGRtYS1idWYgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBhcmUgYmFzZWQgb24gaWRlYXMv
c3VnZ2VzdGlvbnMNCnByb3ZpZGVkIGJ5IEphc29uIEd1bnRob3JwZSwgQ2hyaXN0aWFuIEtvZW5p
ZyBhbmQgVGhvbWFzIEhlbGxzdHLDtm0uDQoNCkNoYW5nZWxvZzoNClJGQyAtPiBSRkN2MjoNCi0g
QWRkIGRvY3VtZW50YXRpb24gZm9yIHRoZSBuZXcgZG1hLWJ1ZiBBUElzIGFuZCB0eXBlcyAoVGhv
bWFzKQ0KLSBDaGFuZ2UgdGhlIGludGVyY29ubmVjdCB0eXBlIGZyb20gZW51bSB0byB1bmlxdWUg
cG9pbnRlciAoVGhvbWFzKQ0KLSBNb3ZlZCB0aGUgbmV3IGRtYS1idWYgQVBJcyB0byBhIHNlcGFy
YXRlIGZpbGUNCi0gU3RvcmUgYSBjb3B5IG9mIHRoZSBpbnRlcmNvbm5lY3QgbWF0Y2hpbmcgZGF0
YSBpbiB0aGUgYXR0YWNobWVudA0KLSBTaW1wbGlmaWVkIHRoZSBtYWNyb3MgdG8gY3JlYXRlIGFu
ZCBtYXRjaCBpbnRlcmNvbm5lY3RzDQotIFVzZSBzdHJ1Y3QgZGV2aWNlIGluc3RlYWQgb2Ygc3Ry
dWN0IHBjaV9kZXYgaW4gbWF0Y2ggZGF0YQ0KLSBSZXBsYWNlIERSTV9JTlRFUkNPTk5FQ1RfRFJJ
VkVSIHdpdGggWEVfSU5URVJDT05ORUNUX1ZSQU0gZHVyaW5nDQogIGFkZHJlc3MgZW5jb2Rpbmcg
KE1hdHQsIFRob21hcykNCi0gRHJvcCBpc19kZXZtZW1fZXh0ZXJuYWwgYW5kIGluc3RlYWQgcmVs
eSBvbiBiby0+ZG1hX2RhdGEuZG1hX2FkZHINCiAgdG8gY2hlY2sgZm9yIGltcG9ydGVkIFZSQU0g
Qk9zIChNYXR0KQ0KLSBQYXNzIFhFX1BBR0VfU0laRSBhcyB0aGUgbGFzdCBwYXJhbWV0ZXIgdG8g
eGVfYm9fYWRkciAoTWF0dCkNCi0gQWRkIGEgY2hlY2sgdG8gcHJldmVudCBtYWxpY2lvdXMgVkYg
ZnJvbSBhY2Nlc3Npbmcgb3RoZXIgVkYncw0KICBhZGRyZXNzZXMgKFRob21hcykNCi0gRmFsbGJh
Y2sgdG8gbGVnYWN5IChtYXBfZG1hX2J1ZikgbWFwcGluZyBtZXRob2QgaWYgbWFwcGluZyB2aWEN
CiAgaW50ZXJjb25uZWN0IGZhaWxzDQoNClBhdGNoc2V0IG92ZXJ2aWV3Og0KUGF0Y2ggMS0zOiBB
ZGQgZG1hLWJ1ZiBBUElzIHRvIG1hcC91bm1hcCBhbmQgbWF0Y2gNClBhdGNoIDQ6IEFkZCBzdXBw
b3J0IGZvciBJT1YgaW50ZXJjb25uZWN0IGluIHZmaW8tcGNpIGRyaXZlcg0KUGF0Y2ggNTogQWRk
IHN1cHBvcnQgZm9yIElPViBpbnRlcmNvbm5lY3QgaW4gWGUgZHJpdmVyDQpQYXRjaCA2LTg6IENy
ZWF0ZSBhbmQgdXNlIGEgbmV3IGRtYV9hZGRyIGFycmF5IGZvciBMTUVNIGJhc2VkDQogICAgICAg
ICAgIGRtYWJ1ZiBCT3MgdG8gc3RvcmUgdHJhbnNsYXRlZCBhZGRyZXNzZXMgKERQQXMpDQoNClRo
aXMgc2VyaWVzIGlzIHJlYmFzZWQgb24gdG9wIG9mIHRoZSBmb2xsb3dpbmcgcmVwbzoNCmh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlb24vbGludXgtcmRt
YS5naXQvbG9nLz9oPWRtYWJ1Zi12ZmlvLXY1DQoNCkFzc29jaWF0ZWQgUWVtdSBwYXRjaCBzZXJp
ZXM6DQpodHRwczovL2xvcmUua2VybmVsLm9yZy9xZW11LWRldmVsLzIwMjUxMDAzMjM0MTM4Ljg1
ODIwLTEtdml2ZWsua2FzaXJlZGR5QGludGVsLmNvbS8NCkFzc29jaWF0ZWQgdmZpby1wY2kgcGF0
Y2ggc2VyaWVzOg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL2NvdmVyLjE3NjAz
NjgyNTAuZ2l0Lmxlb25Aa2VybmVsLm9yZy8NCg0KVGhpcyBzZXJpZXMgaXMgdGVzdGVkIHVzaW5n
IHRoZSBmb2xsb3dpbmcgbWV0aG9kOg0KLSBSdW4gUWVtdSB3aXRoIHRoZSBmb2xsb3dpbmcgcmVs
ZXZhbnQgb3B0aW9uczoNCiAgcWVtdS1zeXN0ZW0teDg2XzY0IC1tIDQwOTZtIC4uLi4NCiAgLWRl
dmljZSBpb2gzNDIwLGlkPXJvb3RfcG9ydDEsYnVzPXBjaWUuMA0KICAtZGV2aWNlIHgzMTMwLXVw
c3RyZWFtLGlkPXVwc3RyZWFtMSxidXM9cm9vdF9wb3J0MQ0KICAtZGV2aWNlIHhpbzMxMzAtZG93
bnN0cmVhbSxpZD1kb3duc3RyZWFtMSxidXM9dXBzdHJlYW0xLGNoYXNzaXM9OQ0KICAtZGV2aWNl
IHhpbzMxMzAtZG93bnN0cmVhbSxpZD1kb3duc3RyZWFtMixidXM9dXBzdHJlYW0xLGNoYXNzaXM9
MTANCiAgLWRldmljZSB2ZmlvLXBjaSxob3N0PTAwMDA6MDM6MDAuMSxidXM9ZG93bnN0cmVhbTEN
CiAgLWRldmljZSB2aXJ0aW8tZ3B1LG1heF9vdXRwdXRzPTEsYmxvYj10cnVlLHhyZXM9MTkyMCx5
cmVzPTEwODAsYnVzPWRvd25zdHJlYW0yDQogIC1kaXNwbGF5IGd0ayxnbD1vbg0KICAtb2JqZWN0
IG1lbW9yeS1iYWNrZW5kLW1lbWZkLGlkPW1lbTEsc2l6ZT00MDk2TQ0KICAtbWFjaGluZSBxMzUs
YWNjZWw9a3ZtLG1lbW9yeS1iYWNrZW5kPW1lbTEgLi4uDQotIFJ1biBHbm9tZSBXYXlsYW5kIHdp
dGggdGhlIGZvbGxvd2luZyBvcHRpb25zIGluIHRoZSBHdWVzdCBWTToNCiAgIyBjYXQgL3Vzci9s
aWIvdWRldi9ydWxlcy5kLzYxLW11dHRlci1wcmltYXJ5LWdwdS5ydWxlcw0KICBFTlZ7REVWTkFN
RX09PSIvZGV2L2RyaS9jYXJkMSIsIFRBRys9Im11dHRlci1kZXZpY2UtcHJlZmVycmVkLXByaW1h
cnkiLCBUQUcrPSJtdXR0ZXItZGV2aWNlLWRpc2FibGUta21zLW1vZGlmaWVycyINCiAgIyBYREdf
U0VTU0lPTl9UWVBFPXdheWxhbmQgZGJ1cy1ydW4tc2Vzc2lvbiAtLSAvdXNyL2Jpbi9nbm9tZS1z
aGVsbCAtLXdheWxhbmQgLS1uby14MTEgJg0KDQpDYzogSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZp
ZGlhLmNvbT4NCkNjOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KQ2M6IENo
cmlzdGlhbiBLb2VuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCkNjOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmEu
dmV0dGVyQGZmd2xsLmNoPg0KQ2M6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwu
Y29tPg0KQ2M6IERvbmd3b24gS2ltIDxkb25nd29uLmtpbUBpbnRlbC5jb20+DQoNClZpdmVrIEth
c2lyZWRkeSAoOCk6DQogIGRtYS1idWY6IEFkZCBzdXBwb3J0IGZvciBtYXAvdW5tYXAgQVBJcyBm
b3IgaW50ZXJjb25uZWN0cw0KICBkbWEtYnVmOiBBZGQgYSBoZWxwZXIgdG8gbWF0Y2ggaW50ZXJj
b25uZWN0cyBiZXR3ZWVuIGV4cG9ydGVyL2ltcG9ydGVyDQogIGRtYS1idWY6IENyZWF0ZSBhbmQg
ZXhwb3NlIElPViBpbnRlcmNvbm5lY3QgdG8gYWxsIGV4cG9ydGVycy9pbXBvcnRlcnMNCiAgdmZp
by9wY2kvZG1hYnVmOiBBZGQgc3VwcG9ydCBmb3IgSU9WIGludGVyY29ubmVjdA0KICBkcm0veGUv
ZG1hX2J1ZjogQWRkIHN1cHBvcnQgZm9yIElPViBpbnRlcmNvbm5lY3QNCiAgZHJtL3hlL3BmOiBB
ZGQgYSBoZWxwZXIgZnVuY3Rpb24gdG8gZ2V0IGEgVkYncyBiYWNraW5nIG9iamVjdCBpbiBMTUVN
DQogIGRybS94ZS9ibzogQ3JlYXRlIG5ldyBkbWFfYWRkciBhcnJheSBmb3IgZG1hYnVmIEJPcyBh
c3NvY2lhdGVkIHdpdGgNCiAgICBWRnMNCiAgZHJtL3hlL3B0OiBBZGQgYW4gYWRkaXRpb25hbCBj
aGVjayBmb3IgZG1hYnVmIEJPcyB3aGlsZSBkb2luZyBiaW5kDQoNCiBkcml2ZXJzL2RtYS1idWYv
TWFrZWZpbGUgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi1pbnRlcmNvbm5lY3QuYyAgICAgfCAxNjQgKysrKysrKysrKysrKysrKysrKysrDQogZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgIHwgIDEyICstDQogZHJpdmVy
cy9ncHUvZHJtL3hlL3hlX2JvLmMgICAgICAgICAgICAgICAgIHwgMTYyICsrKysrKysrKysrKysr
KysrKy0tDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvX3R5cGVzLmggICAgICAgICAgIHwgICA2
ICsNCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgICAgICAgfCAgMTcgKyst
DQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2d0X3NyaW92X3BmX2NvbmZpZy5jIHwgIDI0ICsrKw0K
IGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9ndF9zcmlvdl9wZl9jb25maWcuaCB8ICAgMSArDQogZHJp
dmVycy9ncHUvZHJtL3hlL3hlX3B0LmMgICAgICAgICAgICAgICAgIHwgICA4ICsNCiBkcml2ZXJz
L2dwdS9kcm0veGUveGVfc3Jpb3ZfcGZfdHlwZXMuaCAgICAgfCAgMTkgKysrDQogZHJpdmVycy92
ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyAgICAgICAgIHwgMTM1ICsrKysrKysrKysrKysrKyst
DQogaW5jbHVkZS9saW51eC9kbWEtYnVmLWludGVyY29ubmVjdC5oICAgICAgIHwgMTIyICsrKysr
KysrKysrKysrKw0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgICAgICAgICB8
ICA0MSArKysrKysNCiAxMyBmaWxlcyBjaGFuZ2VkLCA2OTEgaW5zZXJ0aW9ucygrKSwgMjIgZGVs
ZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLWlu
dGVyY29ubmVjdC5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvZG1hLWJ1Zi1p
bnRlcmNvbm5lY3QuaA0KDQotLSANCjIuNTAuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
