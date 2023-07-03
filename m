Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B657462A8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jul 2023 20:43:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB4A93F31F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jul 2023 18:43:18 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2060.outbound.protection.outlook.com [40.92.99.60])
	by lists.linaro.org (Postfix) with ESMTPS id 21C593F0BC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jul 2023 18:43:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=outlook.com header.s=selector1 header.b=M+VF4mPa;
	spf=pass (lists.linaro.org: domain of wiagn233@outlook.com designates 40.92.99.60 as permitted sender) smtp.mailfrom=wiagn233@outlook.com;
	dmarc=pass (policy=none) header.from=outlook.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RJrptUx+I20i+TlDSgVZpRkSxhH67KlE/epSjxkHV7Lyc60brjClTLF2++vhXP9UARXMlEL7d07qKiXgx7Ofp/ILuOJoY7SrKq3tVh2YNbJSgHUvgW+kB6zCbBXq8rEiWUwPSi46BGjys4oxJknqNFa/CtSl5zvL5PnnCI8pK1iunNQek3RhO9XccAAvhUqFxOI/Au2ck2sW3xLsqYhUWOFFRCyErZfnBMKMnG0syVXdFmpcBDvsExWkxfsuo63w+LE4pm5VhvNA5aDxCDh5O5jiUCU+27nk1OsmjH3ANKm2rIvhkYEJc1i6tqATf/FMgJ7R9HN/51ivfrdI7Isbag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H4QNl/4WBAhGEr3QZsJyNdTP66uQmdeiM5my31f8JGI=;
 b=jjkJN5zzCSUf2gUzawVBaq5f8q/MIlODlT1wFafr0M6cv3OfDh9JoEwT0dTD7UDqoOAP1XRU/JnEEtttCAj7Q7GMx5ATHtEwdoGWCR/ZyeknvvXQjlsGyuswKTcNrUkWKLb6bRK+9N5mxqneDq+QfeKvWUIv7hyZx4yOz58xtBaFL4dDXvsZqjDSxubz1V2/chc1v7TaIc880GCBeirlVwPPBkuvYapjv+pMVwH3aJxKDC9unH7Jr+C9okotBUoLYeCOFQWoL0+v7i+5nVgCzL2aw7mIZfxiQqwZYmQ3XGFCYzXZW6HyBY6EIJ3R97iq+sFl7g1YcI5ptqVMaxJPdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H4QNl/4WBAhGEr3QZsJyNdTP66uQmdeiM5my31f8JGI=;
 b=M+VF4mPa7rBu+w53/vGTVCGdsLr2b7BAQ1yrrckXVfdeoxcfntNjb0cgQZwNKDnICA5zMeoyWyGOS4TnmD04g+4S8ctx1UNtUXOGywOMGmG0aBPGl1bKtk/kjvKy7BiIZb3Ih+I2in/OUExLFne5egrksc2nxt+74kZTlpuckxWBZrISm3QTvQ6e7pwjY/BCYJo+e3Wo86JH++H6dbR0mZ4mZc69Im4LNNx8W7ngBi6dKa1slhbvsL6LiinAzD9h0qHnFobfLMGpNFmHgUKX08YlkYRKwZkfWL3FuuinVDUp5tJBh8HcF+WuDCSel3PachGbeSC5fGi/NMuVwqdKxg==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:23e::10)
 by TYCP286MB1658.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:183::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 18:42:53 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3794:d6cb:1aa2:342e]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3794:d6cb:1aa2:342e%7]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 18:42:53 +0000
Message-ID: 
 <TY3P286MB2611AF9B43017A0AE3C938249829A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Date: Tue, 4 Jul 2023 02:42:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-4-keith.zhao@starfivetech.com>
From: Shengyu Qu <wiagn233@outlook.com>
In-Reply-To: <20230602074043.33872-4-keith.zhao@starfivetech.com>
X-TMN: [q8eRu4Dy9Z5z6mkXn2/ZpWEKAyQXX1esgPGeERBNNAfCStz7UAT7Xd4A8uJwCTlC]
X-ClientProxiedBy: SI2PR01CA0005.apcprd01.prod.exchangelabs.com
 (2603:1096:4:191::23) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:23e::10)
X-Microsoft-Original-Message-ID: 
 <668f4051-2922-ff16-d1ea-c18b5e733588@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|TYCP286MB1658:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c90bf83-1ac5-4091-abb1-08db7bf54f96
X-MS-Exchange-SLBlob-MailProps: 
	Cq7lScuPrnrElUEZnFnVRdo5Pxi6wtKSuSdeKCL4PGYuIi4b7D8GhI+m7s9ptLDS33Nmh3lirtYB9OqdpntMbpGsnQchuqWMfNs40XY4G0D2rdeOFquDzjxWnc25neQPyVi39xSlfaBrzab3i8H5LqZtZuN3gG4nomiLIMDwFO6jdffULv56so71x5aV4THSBt0SO0PlNytccOVZoyts7ObYvIzN6/jPeeHBfJ8lumzTPmKVG3iOpCJGnO8LGAQDNaV8n6PjRPFWmKnUU713EUS76MJ5BpIPdQ0W+TwFt00m66ozJ2sy+VIDc0g1RfqJVGKinh0Pqk7US/6vHlwrLgstmIj1n2EfjiPjRKAKqmpVZ9Xo3NF0eVI8SJ0WpwiSVCk510FtP8yNR0MQYnztaPTMc9L26Pzl67OA3PPp4uu8pgBmkdDxGaGhqcBNJDenxX8Or7iXz5lES2wEYt3o1MDzGARNtypxG8CT9W+idDmyBIKkRYLXcpyQmoa1GDRd6aGQ/Kfr6J+QaBkpBmnNaIq9Ti6eaVYU173NBUTSuWzSjKEY63f8IRFfmLGHVJZp/NiY9DqCPZNJui0NgKWoBfM+Gp3UPqtEUhlnkfaiNAEC6lYpUhUn3UKVF6GKyHDAjO6QnlAwBevmj44Tx/lH91ia5xhRxptpYbYQcUayb0Nq2CAOoQQbf+i7cGD500LX/+RDZydEsOC1QpyPtjxErtke3yF/aAnMgq/EuArTVA0j12U8NOokJVKWpiVB6TV4SdY8jIUx4q0=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xzst3SETXDcv6Cd3Q6BdHdoQRyXwljhu2qnXRiz6ySccxPHToTQ+bxmrjXYKUVmjhPhTVo+4/6pDTJ2tZnOWRViTICPT8ALqqHTXNdMxOmbu0B13Z5qY3WgQBNCFjWtqjjfCEHOSBV6uZxvpJJMbYRj0/DfBOeFUrsJwKHhCtX9B3bm6IH9lEqAR6V7Cwd52suS44yXuj7NFhNcG/F/d0uQQ1O/O7fBeNefKZzDqMC0zNC+ECuvMwhFDBlaqm+DXbgiSReUFc50FUyNya15neh5Hh/zCE4k90b9bVI33xeLRSl9qjoNhNgQSyBI5hqAJzkGhMW037g5u1XiBhRqUGFgaCiiYC6ezzZxahR/nXzy5tLwrILEheZXn3ee5bclo9IclFKaq9yvTnIgiYWe2zn3LPG9crYqFUE6HWOYB9LsZ16RPkKS3yokAZaGqOXzKxnxSCcoIuzTSwybLKPw5i9o7Si9+8ai0XXTqnluGu8rXn6DtFJGF1Db1uwxqNI/AzEeCGqetxiSiiHoPK16LBFq9SeZkUNofMv46z08CIUaMusloViQqv3K5BTw9Hmp+4F+jkRAvKAwvgiBo3MH+xoCpUCgCUNLggjm3JQV5pmBnnImG4bxsmP189bS6/HHO
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RDRLSms5bENheXVYMkdkdmJHbFMzV0l5Yzg0akRxVVZQemlJeTIwZkM5K2Mx?=
 =?utf-8?B?WDNFNEc2ZEQ3bXdjNlppdWxIaHRZTm5CQXRrMnlSbjVEUlUrNTVYMXRLTHJn?=
 =?utf-8?B?TnBtYmtuVXBybkJSanJUZXlhZEZQM0ZmbXpFMFpXSkd6TEVsTzhFN0FLVjlG?=
 =?utf-8?B?S0RGSjJoSitIOXByR0xMYkNXenBqTzVzQlpxN3JaTTlzaDRJbFkyWS93ODNS?=
 =?utf-8?B?WjNnMHE4K1NpL29KWFJiZS9sTFp2UEZTaFFlUHZONTYzNzhIUHkxSXNhZWxY?=
 =?utf-8?B?UFZXYkpLbi92aDE2ekNVRENSZnhVN3p1ZXYyenc2QzZVdEF3YUZtbE91Z05n?=
 =?utf-8?B?d0NFVGhlL25EckxlSEdYcy9sQXdKbjFxM2Z4VHlEYVZucEF2MGprbHN5ZHRZ?=
 =?utf-8?B?dnQ3UTB2Q25kL3FGZFRLTkJpTXRDc2U5NHFkSUJRSmMrQlk2TzBzQVBsdi9W?=
 =?utf-8?B?QWgyL00zVDRhTUJFMUpUTWZETW8vNDdWclBXR1o4bG5UaDBieUR2RFVERURM?=
 =?utf-8?B?b0dYKzN4YU14SzQrZDU2VXpsaXdkd1lSa3R3VVdmZzkxOG5NbVhRVFROOVZT?=
 =?utf-8?B?K05LM0VPTXJhQ2kxQm9yS1FLSFVuV3ZIQ2l3VDNIYU9raElGbStsVE9UZWpW?=
 =?utf-8?B?ZjZmdUVjUmZvNGZGS2w4c1VHUUFpcHhoZG05TFFpc0hUajNSelZjbXZtbXN0?=
 =?utf-8?B?OVhldEkwcTFpREVaeFA5Sy8vY3NrOVhiNlZqZmMyUnRWVXNLeGx2MnZkeEpK?=
 =?utf-8?B?M3ZOZGZqZVVwWU1PQXB0eWk3QUF3Wm5ENkIzTTJUUEhRVkhtYitIZUhuaCth?=
 =?utf-8?B?YUMvTEltMHlCS2FoT1VYazRxampvdmtDMTdKcndmL0NvdkM2TjhOWXRnaDhU?=
 =?utf-8?B?QmhFVnFzbnpuMUxJTlFEK0hIOTNvNUlzekhzQlRGUitScnN3YjNMc1ZJZHAw?=
 =?utf-8?B?VFJib3grb1cvS2x3cXBxd2kzTU0wMGhaQ3hDT0U2MFdLYzB5c0RRTEkvUlM3?=
 =?utf-8?B?Mm1UTlI4VlgweHhwd2NQT3hYVnlhMmo0WjBCMWJsNFY3T092ZXNkYXFJeUVK?=
 =?utf-8?B?YlhZNnNwRkJQQU1NbWN6OCs2ODgvejJqckloQ1ZxOG1SSXo3KzBnTWNQMlBD?=
 =?utf-8?B?SXY5RUdxY2k5SlZlLzliejhnL1lWdEVQVnkxbmVaelpiM1Y1aElkQ1hzYW5t?=
 =?utf-8?B?bkR5cmNZMXZYUE1KNTg0ZlVIZUszL0pmSld6UUVDWTZYUll6bktDVUIrWGwx?=
 =?utf-8?B?NjRBaUdPb3pid0hYYmZYaVlBYTV3QzcxQ1FmK2EzOC9sTlcyNHBJTTVEeWVF?=
 =?utf-8?B?am5zRWE2a2FaM3JpSkF6TnpSSXAyNE1OdVdnWTl1TVVUU0tGam5UVmJLQmFL?=
 =?utf-8?B?OWVtUCtuV2gwbDFOdmFKZmFkQW5qemJiTnB6d3lHT0FzOXBUR080aHVJKzBl?=
 =?utf-8?B?OHk2anlvNTlXQWtKS1AwaWZqcDc5OC9lYTA5NE1NbHcxUkpJc1NMMkxGMVFE?=
 =?utf-8?B?WkZpeXd3VDdpeFdXbnVvZTBETUxpMWtJV1U4WGNiT0F1clZaR3hTMTdNbUQy?=
 =?utf-8?B?Tmlya2FlUVVZeVIycUd5aUVKWGxaQUdjMVdRUnQ3aldZeEdUQ2Fjd0xkVGhO?=
 =?utf-8?B?V0YzbWhXNUN3REh5RWhoWS9UakhKQURkdDZ3SHp6dEdvd295WWhnWkNsWGFR?=
 =?utf-8?B?VFpyb3BTZktHR0pQMmkybms5L09NMW9EdmZ3aHlNOEhoejlqN29RelF3PT0=?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c90bf83-1ac5-4091-abb1-08db7bf54f96
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 18:42:53.8707
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCP286MB1658
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_MUA_THUNDERBIRD_MSGID_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[outlook.com,none];
	R_DKIM_ALLOW(-0.20)[outlook.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	FREEMAIL_ENVFROM(0.00)[outlook.com];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[outlook.com:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_FROM(0.00)[outlook.com];
	FREEMAIL_CC(0.00)[outlook.com,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 21C593F0BC
X-Spamd-Bar: -
Message-ID-Hash: VIOWKRIGTVLLFGELA3XXOGUJJDJHV7YU
X-Message-ID-Hash: VIOWKRIGTVLLFGELA3XXOGUJJDJHV7YU
X-MailFrom: wiagn233@outlook.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: wiagn233@outlook.com, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] drm/verisilicon: Add basic drm driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4Q3MKPZTVVQYHMQ6S3MCIMTGIAWGITRH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8gS2VpdGgsDQoNCldoaWxlIGNvbXBpbGluZyB0aGlzIGRyaXZlciBhcyBhIG1vZHVsZSwg
YSBlcnJvciBoYXBwZW5zOg0KDQpkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfZHJtOiBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlzIDIwMCBieXRlcy7CoCANClRoZSBsYXN0IG9mIDEgaXM6DQow
eDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgw
MCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgw
MCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgw
MCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgw
MCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAg
DQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHg3NiAweDY1IDB4NzIg
MHg2OSAweDczIDB4NjkgDQoweDZjIDB4NjkgMHg2MyAweDZmIDB4NmUgMHgyYyAweDY0IDB4Njkg
MHg3MyAweDcwIDB4NmMgMHg2MSAweDc5IDB4MmQgDQoweDczIDB4NzUgMHg2MiAweDczIDB4Nzkg
MHg3MyAweDc0IDB4NjUgMHg2ZCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAg
MHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgDQoweDAwIDB4MDAgMHgwMCAweDAw
DQpGQVRBTDogbW9kcG9zdDogZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX2RybTogc3Ry
dWN0IG9mX2RldmljZV9pZCANCmlzIG5vdCB0ZXJtaW5hdGVkIHdpdGggYSBOVUxMIGVudHJ5IQ0K
DQo+ICsNCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHZzX2RybV9kdF9pZHNb
XSA9IHsNCj4gKwl7IC5jb21wYXRpYmxlID0gInZlcmlzaWxpY29uLGRpc3BsYXktc3Vic3lzdGVt
IiwgfSwNCj4gK307DQo+ICsNCg0KU28sIHRoaXMgc2hvdWxkIGJlOg0KDQpzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCB2c19kcm1fZHRfaWRzW10gPSB7DQoJeyAuY29tcGF0aWJsZSA9
ICJ2ZXJpc2lsaWNvbixkaXNwbGF5LXN1YnN5c3RlbSIsIH0sDQoJeyB9LA0KfTsNCg0KQWZ0ZXIg
Zml4aW5nIHRoaXMgcHJvYmxlbSwgYW5vdGhlciBlcnJvciBoYXBwZW5zOg0KDQpFUlJPUjogbW9k
cG9zdDogbW9kdWxlIHZzX2RybSB1c2VzIHN5bWJvbCBkbWFfYnVmX21tYXAgZnJvbSBuYW1lc3Bh
Y2UgDQpETUFfQlVGLCBidXQgZG9lcyBub3QgaW1wb3J0IGl0Lg0KDQpQbGVhc2UgZml4Lg0KDQpC
ZXN0IHJlZ2FyZHMsDQpTaGVuZ3l1DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
