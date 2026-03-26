Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ho1L71i5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BA44314CA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 590AC404FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:30:36 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010001.outbound.protection.outlook.com [52.101.69.1])
	by lists.linaro.org (Postfix) with ESMTPS id 8F5E93F783
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 07:18:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=nxp.com header.s=selector1 header.b="BOXHS3/z";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 52.101.69.1 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com;
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qA/vLtigiQrNGagpa2T8r4slCwBIh0KT5u8/5VWuq0jPhEOvksPy3pFGq+TPBRHYk/gUOzyPn3mgGhdKx/3rXiD2C0zm2j8MwXuakAB+TcJEn85LLCdF4ZvJe5N1jKQ2IvXGWJDrynAOCJOuYrBqLokzGlBY7a1CWRyUazH17OhZmgrVYgr1JAHwgQGqSw6ul+p28KZeLdw41kGoRXME2sN/GuIdDt1AV3XvfGFzgZyJnHbvKpHChBpjuGqPj7zVlalBHs8nDzED9OcByNM9FnbsZlZL9gQ5RsmJqlPoLTvyCn/WXJ2HR0Vd9rt4BZX/QXYMdzuOYVLMKOinagqosA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4YuhOeN16GPlIWH3/tWZwlzOc0fHgNvjWCLJQC2a8Q=;
 b=Y9zqLNQlflVGEsxbtxaxtJuLKpDbrahVdLBiB3RyDPE9lmVfR7bsRAdtZGIz8kcgLJJ990waeJ1wooy0SV54s/oH9zhICGRbgP0HmoLyDWYak4zQ4DNVooLvk4WcpMpijAzTYy4QozhO93MoPGKvUqyX9Tp+wqB2vWDumAYR+1984zBfw0YOnPIqPgbjqggIJwUAddNWJDctcc7VFAr5iajIO8W+xLiMi6SINUiMtqqoo+3XNzC/5TF5qTjtjzGNnOP7c8ShaGQmNUJuxqm1NDYx+fDI/uF0hGMsBhVJRKVPBxqlrkWLv9gqlfss5y8tvGe7916edIcZimn7j6ZD3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4YuhOeN16GPlIWH3/tWZwlzOc0fHgNvjWCLJQC2a8Q=;
 b=BOXHS3/zKCHynYEeALNg4+Cuzufx1+h3f4tj5y7CKyfxZES9ESQvhY2uUtJUvxlMYkMo4S8ALuU1NBykRt1F7fxoiTWwMHOIb2eJkk5+X4X7NkmqMYh+iKxZ3teOOFCnqT7RIL663PfOGbj1CcCl9cRoce4Hb7muGet6sMx6qyG9lUTqBlg2Gmhm0vqrj/swtgZl1wH/UPwsdz0Og9VxPbCbO6/TAQEZInsOD7ch7qfaX2uLWb23SrfgIDpfFalpel6XrjlJ/p9Yt1XYdb12RjAVbl7IM0EovdJ+z+M2Yz8snoEyAHbcmX3lIr8EuCl3h4sb5re0qN/axPBpO63wIg==
Received: from PA4PR04MB9413.eurprd04.prod.outlook.com (2603:10a6:102:2a8::12)
 by VI2PR04MB10221.eurprd04.prod.outlook.com (2603:10a6:800:22b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.31; Thu, 26 Mar
 2026 07:18:28 +0000
Received: from PA4PR04MB9413.eurprd04.prod.outlook.com
 ([fe80::d262:346e:5006:3874]) by PA4PR04MB9413.eurprd04.prod.outlook.com
 ([fe80::d262:346e:5006:3874%6]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 07:18:28 +0000
From: Ioana Ciocoi Radulescu <ruxandra.radulescu@nxp.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Thread-Topic: [PATCH v2 0/9] accel: New driver for NXP's Neutron NPU
Thread-Index: AQHcrW0Sx9bFLIZMFE+2EPv3Y6VaP7W5UsoAgARg2/CAAEtXgIAChyvA
Date: Thu, 26 Mar 2026 07:18:27 +0000
Message-ID: 
 <PA4PR04MB9413D4380B1F71071401EBB69456A@PA4PR04MB9413.eurprd04.prod.outlook.com>
References: <20260306-neutron-v2-0-3019bd8c91ef@nxp.com>
 <CAAObsKDAzfib86rXqt9FjXV68yRkBzmijcyR+x=1MsPYd=MQWQ@mail.gmail.com>
 <PAXPR04MB9424214A1AA43BD0C36653E89448A@PAXPR04MB9424.eurprd04.prod.outlook.com>
 <CAPsqS2QXcgbi9_e4QmCn1Cgkr-bOVsY-E9qpZsFw3WYWWLugEw@mail.gmail.com>
In-Reply-To: 
 <CAPsqS2QXcgbi9_e4QmCn1Cgkr-bOVsY-E9qpZsFw3WYWWLugEw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR04MB9413:EE_|VI2PR04MB10221:EE_
x-ms-office365-filtering-correlation-id: be26ebd8-8e12-4aa2-057b-08de8b07e074
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|7416014|19092799006|1800799024|366016|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: 
 DJH+YaQuGawps5/mIGAkb+M2R9F+SFAi7a1GcGtk7FAkiK6eXerzXqYkGdRnrmsaUEsT6VpOZiApu2EEE8rtRLekwf90vbIi+SJRkvImnG3QfPqnbGCs7l9QIDkOHVRBzaavQP30eBHjOG/GvRxmHvcoLIwnkehF8aGKMVzV5I6ZWzPGL7jAg3EXO4eu8J4TQE6NftkSEy1E9xnqrYXu93Dt63d/r/esscxhUm0TQIf0U16qDF4RfO//obJJbzD5QSwq3+r0HlavcY0EBOCN5fwVf2fTsF9K0nZlJrmUdwe3eNmxhW4HmBpq0C9RDN/2CvOTUYV+OqrdUvzY14gw0u26mvd6598gWeKinLi9NSOAWDDGx/KbtWmIDiYHtizWStZIN0hZf7ipjDqtpwjenixGIqYeO74k5dNdgx36ByidPGsTQbJBPL86ht/yEJxVBp7MQHn76vqVDBmd5mzoC0Z/yezvLniJZdcX6Q1eFB5Bprf4l2juqyzgrjha+g/fjJPs4qneY6/CBdhHxJEQCACJiCWYx8IX7uICLFKZyVAQIn4RStFY73GjCRDa+Ug2qe+TbxjIM3wFK4hhRtOqopegZ1J2hnVmKXQPs4xDMn5F5Vl+opMEEH8Ro1wxqGQ7ZNKeCXph5Vj3wHK7mODszrmYX4UFfZOkX8p5irJgEGTU1mlFRK9mJsat5F0qTFF+zXHrjkL+TRYotYGZgAywk1oeGpfoMGMRWWKzYm+qRt+Z6gvKEgCR6rK9tgoeO5I8
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9413.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(19092799006)(1800799024)(366016)(18002099003)(22082099003)(56012099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?T054SlJvazgza2l3SEhqM1ZIOXBxNjRXNFZxbjg2cjJsdUk2cmRWMDNFemM4?=
 =?utf-8?B?N1VxRzhlTStpOGQyenBQTVQ5VWEyd2lPVFlxaWZRUkEzTWJLUUhRTUFHUFdp?=
 =?utf-8?B?TXBnZHdOVnJHN2dJOXI0WWVrdHJFR0NMcFdpVzQwYUFKaDhkQyt0b2ZHTjlt?=
 =?utf-8?B?NXErQ0tEK0pWVld2UGVEQWd6cDJURHFsYTh5d292TUN2cW9UcVlzMTlyVFRi?=
 =?utf-8?B?T2U5cnkrQWlpZG5DTXQ5WHRMdXh5cTZwdU9wRFdwcHBqQzk4QUF3c2ZpaFZU?=
 =?utf-8?B?OFdqZDJEUytBbHdUb0lyNGwycmZ5cUJrUUpHUXlrdytMa3ltTitJblg1TjNY?=
 =?utf-8?B?empkVXZJRmx3b1VwRk85bG8zMmxoMmlnQkIxVUJwUEo0a2wxTjV1SlYxUlFY?=
 =?utf-8?B?Q3FPeFJxemNYc2dOaWRTTmZ2elZPMSs1a29UalUyRERpNTJHYzRGa0k3aTdD?=
 =?utf-8?B?b1VVS0pjbnI3SnUxOU45amFqWHg4UHFhb3ZSNWx5RzRPL1M3cFR0Qlg3a2U5?=
 =?utf-8?B?SWc0ZW9XM3RLRm5sU1BEbWlPZy9YVHpyR281R0h1MVJHdVBTVW0zajB0VUNs?=
 =?utf-8?B?VzE2dmNXUks0Y1pNVFgxN1lWUDVlcm11QnlXSk9SUk00OVRuUWltd1lWNElZ?=
 =?utf-8?B?aFByUlBBQ2xyNGY3cjZObmdxQ1RtM2s3MjYvUGt6Z1hoSGVMaVNpaWtTQThH?=
 =?utf-8?B?MXQyQjFVd2xtR3o1d1EzdG9mRGRoeHVqUEVDOENsNm83RGg1b2xVTEphNXFI?=
 =?utf-8?B?akJoNEdxU25GMHZ5Ujh4Yk1uZFh3R3l4cm0rSEw5YzJiek5oSHRxcDNEQW9x?=
 =?utf-8?B?NG5NdTlsUFFkTWlsRE1aZXpmcWN5OVZCejJJMXFOVEFJVWFjYUk1YVpKTldp?=
 =?utf-8?B?NmsybHZFa2ZaaGhaVWRGbmIrUHN1bCtLUTJXejR3QVhnUWpyQ2g5b2duSEt6?=
 =?utf-8?B?ZmE5bHk1Q1MydStsL0J6THp0SE0vcGVRVXFsd1ZMTG9rejNzRUZMTUw4TWZx?=
 =?utf-8?B?TDNqd0NwdTllZkFXai9XRC9tbEpxcUNKMVFwZGhRZHZPTkh0OCs0QkFWREt2?=
 =?utf-8?B?S3dBRXRhVVlMVm1UWU45SSt0WHROQWdVZDRmSTdmaUVOOUYxVWNBWnBDYytl?=
 =?utf-8?B?NmY0bDJ3WGtPb2RVdU1lVkxkVm1WZmxnSVhXZ2h3bVlVaVdRVWNzZUJQbkJW?=
 =?utf-8?B?VkZVU0NCNU9TbjNwQW9UM0lDbXgvZXRZbnpyODBUQnFJMGVJaUxGQjR0OHk5?=
 =?utf-8?B?T3BhZXVWZElyRTlBUWRwenFPaFNucDJ6YjlxQng2MDMvU0p5VS9Sb2hSSFFW?=
 =?utf-8?B?WGliWllGV21nUkVHdUQydXhSTlFVZnFDSDhObFZHSGpTOS9SVnJsK05JMHZJ?=
 =?utf-8?B?dEdyTFcxK2RPNGhvYVkxZ3RGWjdLOTRpVHRMa1YvQTVnK3lKZUlHQ2NjTVRI?=
 =?utf-8?B?aSszZHY1dG1UY3lxR0NYMXIzakY4eERXdUkyWmdyWXQvNTlpOG45Rm9FV3VK?=
 =?utf-8?B?eklBMHdYOWNwQnZWM09XaVFDQ2V0ZXZRMVIvMlNYQ09PaGlVRDdzRVZZWVpF?=
 =?utf-8?B?NThiUFY5OXZMUnBBVU5DbXBrRC82MFpsRUNCWS9tamFLdVZ1Q082R0ZwUG5y?=
 =?utf-8?B?Y3dCcXRpK0NacVU0WGIzOEtyZ0RydUYxb25LMVZrcFpsV2d4TDRrcnhtOEQ0?=
 =?utf-8?B?dnQ5U09DVHRiT1NVNUhaaHpnclJMTElqRVp1bXAyemRsWSs3YUlMOXBZWEUw?=
 =?utf-8?B?U3NvYU9INU14RVppQU9qdmdlZmtxaWhsM3dGTmc0alE1U0tWM2JkeWdXdGcv?=
 =?utf-8?B?QlVvbFpsSFdIbGtQZWJMQTdodlV5VDhxaXFrTjgwTXpFY1Q1eDB1TzlDWmh2?=
 =?utf-8?B?ZG0xYmZDeXUrZXBONzFCQXpDQXlrMUR1RkJQZG5PTld6eE1iY21Ca1JuRmRj?=
 =?utf-8?B?aWV1UUF1WWQyWlVLbFNmWDJueEJOOVdvOHpERlJwRjRZaFRCMW42TFRIV3lq?=
 =?utf-8?B?OC9PV0NVV1RHcnZ3TnNZZzl3Qit5Z0lUTDdueXZPM2FEaXh6em5OUnptK1Rh?=
 =?utf-8?B?TTRMMThDSnhsS2lUOWtpTVI4Kzh2ZnpOZGl1dkpMVGRaZ3E2OXRTVEtFUm5E?=
 =?utf-8?B?VWF3TDg3SVE4aXJiS0FvWGs2SDZ2WmU2NmJjZ3VDcXB0ZDlrOXNxbjhmMFI5?=
 =?utf-8?B?ODZRZGZPWTBZaXVoWTFyTzk0S2lMV2kwTkR6OE14OFVRU1RZVC92bVJFcUJR?=
 =?utf-8?B?c2ZEeGJpQVVPbmxtSTJFM0NGV3JxdldrMUhrSjVoTk5JMEl6Mnl5REhXeVBD?=
 =?utf-8?B?Q3NSTHpvR3BnWUZPQVY1TlRBdzRpTitpMkVuNEhSd3hsV2VBQmVDQT09?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9413.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be26ebd8-8e12-4aa2-057b-08de8b07e074
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 07:18:27.9597
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IJ17vTUhzJbHHpiysR27Gz5mGd3Dq+1IwA6rTU4z3ORDIl7xNo8msgKGQZMBHl9Ka7e7+6zCQ4kyKMQAlq9WCi4vlTbNbc0uWgYMkiS4kAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10221
X-Spamd-Bar: --
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 36ETMAZQOX3T65MQABQL2O7HUAHIO2Y2
X-Message-ID-Hash: 36ETMAZQOX3T65MQABQL2O7HUAHIO2Y2
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:47 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Frank Li <frank.li@nxp.com>, =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@list
 s.linaro.org>, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Iulian Taran <alexandru.taran@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/9] accel: New driver for NXP's Neutron NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NXKHWV5CHVKUG53BW3BI73EYHIVKXAH7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[610];
	R_DKIM_REJECT(1.00)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.784];
	FROM_NEQ_ENVFROM(0.00)[ruxandra.radulescu@nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org,list s.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[nxp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 46BA44314CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, March 24, 2026 at 6:40 PM, Tomeu Vizoso wrote:
> > >
> > > Hi Ioana,
> > >
> > > Looks like the userspace portion of the driver is closed source
> > > (libNeutronDriver.so)?
> > >
> > > https://github.com/nxp-imx/tflite-neutron-delegate/blob/lf-6.12.49_2.2.0/CMakeLists.txt

> > Hi Tomeu,
> >
> > Yes, it's closed for now. We do plan to publish the source code
> > on github, but I believe that's still a few months away.

> I think you may want to sync with your userspace team sooner rather than
> later, so you can comply with this requirement:
>
> https://docs.kernel.org/gpu/drm-uapi.html#open-source-userspace-requirements

Thanks for bringing this up, it helps us raise internally the priority for
the userspace side. In the meantime, I still hope to gather additional
feedback on the kernel driver.

> It could be good to also share firmware code with other firmware-mediated
> NPU drivers if possible, or at least the part of the rpmsg protocol that
> makes sense to share.
>
> You can see my submission for the Thames driver for a link to the firmware
> code.
>
> I would be happy to help consolidate code between this category of drivers
> if you want.

Thanks for the offer. We are considering our options, I'll get back once we
reach an internal decision.

Regards,
Ioana
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
