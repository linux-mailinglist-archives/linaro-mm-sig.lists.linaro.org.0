Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EABED7D0C47
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Oct 2023 11:51:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90E4B43FE1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Oct 2023 09:51:05 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 436A33EF90
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Oct 2023 09:51:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=F1iV68nr;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=NCd+ajjf;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: 298b6bc06f2e11eea33bb35ae8d461a2-20231020
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=XccS+LgS6sgJeFvWDY0BfqpECXirzLOpDuMH8eyT9UI=;
	b=F1iV68nrpB4ZoSQXXrlxbpoW1+5DgelfjX3DRLV+ZJAsYa1vw7d1Gp5Cupz5HOecEysaED8rR/hCul+v1OzV/Uw4hRjd3c3IY+sRBSA2AGbCGxXZYBftuBxnfvs1O7SWoQxNT3DDYKQe5KQuCe43+APvPPF8yE8mHUX+xto7WGg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:aec6ca31-5aab-4178-b8df-a67b82934892,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:5f78ec9,CLOUDID:eac491fb-4a48-46e2-b946-12f04f20af8c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: 298b6bc06f2e11eea33bb35ae8d461a2-20231020
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1423700412; Fri, 20 Oct 2023 17:50:55 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Oct 2023 17:50:53 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Oct 2023 17:50:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mM2HUfh1Tpu4EUElxL08frfd1EWWIxsFJs98WmAlsbHmSwR83artN/mpjKWT8+nf1Mwd/nkBhVzY/zV2wL1p5XIMwUk2Kmq6MyvBbIiLzZ3o3UxttiZdVMLEoN9w4iTXRJNi8aM9oEb+PFyjGYbRhYQYv9XU84UPoVsPg9wqWrsnLZdum/CcMZX9prMZlHbVY7zcCiF8TJNADlKy52JBZUdIzprdEbZX+SsQVKAtAq0eiqQhCmYnlnl715MqGeYhvZZuD7KnXUwymsUIQuCdz3gfWwzLBKVBsm2jpU0m6lQ6WvLgpos1DcEmhqp4U00TLagj6QYr5dkBbQRuSWmvrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XccS+LgS6sgJeFvWDY0BfqpECXirzLOpDuMH8eyT9UI=;
 b=NdXpjTWzmw/DNQGpz0f88eGES1OtUNK5aD+UqVJpIUzWHYPGjgfoV4n4UideyXUXGVBH1F8dU+lx9enPIRqylHRcbKE3WJCEJFgktWPByPdny/lvg0vbWkpVFeodGa9JLWQ1zYu7Zhaj792ObrrRQjZMVArc9BKckl5U46ovCrOu2heIZrh7tLp48WWbD1zceAEoXFonXbRwwjuH3fEBp1iZa1pdY6ZYaTcFdzX4CMLHrzE3cqfX+1yrvX1u2G/9Eo2lG2zy4x+YncaRY3cYsSeoJkV6/8LOBWjIjuhE5tFy2PBUvvjMejhe9srpgZF2ouBhNIs7lPN23/FwTGRHsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XccS+LgS6sgJeFvWDY0BfqpECXirzLOpDuMH8eyT9UI=;
 b=NCd+ajjf/J5fS4Dxtpw5r7ZxSoYtGiHa6bKfU5UvB94pb9al9Jb+DDr7P+ivtMWVEDD4HEF/hpU3SRYQAQE8VH4GajPOVGh3U4nv2AUCCa8EW1l39uv53F2RaRY02S3U43qCsBbelH+B+8OVPGHtwSDgTjolrR35xGmleXC2KXQ=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 PUZPR03MB7064.apcprd03.prod.outlook.com (2603:1096:301:11f::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.21; Fri, 20 Oct 2023 09:50:51 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::3dfd:5783:26bf:c189]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::3dfd:5783:26bf:c189%4]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 09:50:51 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>,
	"quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved
 memory for SVP
Thread-Index: AQHZ5FgxjegLVruM7kG7VRoFLocLPrBQxboAgAHnZgA=
Date: Fri, 20 Oct 2023 09:50:51 +0000
Message-ID: <2c3ad77806df3ef23cb69336f2049821529e337b.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-9-yong.wu@mediatek.com>
	 <d4d471e7-64cf-42bf-a061-82934c904691@quicinc.com>
In-Reply-To: <d4d471e7-64cf-42bf-a061-82934c904691@quicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|PUZPR03MB7064:EE_
x-ms-office365-filtering-correlation-id: 1af42020-e25c-4db4-c29f-08dbd1520b6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g+AoNHMpZpfsAVNEhMuyE42RsYRWcjt93ivkWWqXh2FlshZS87VjzUsXE6sjcZoNRJ4rG5kkrT/vCI5tU0QUpOuLO3USf8YE78oU3qwUal4NjdvrC0YuRgtXPss9yNjKk4kXKxDi/r54rJjCFcYiGFmba0hMV0iAYj9jf3/9pkcVc45fufuobr3LsWwqNhMl1az7dW9Iny2JrE+9fTL4R2+jGnZWq9e/SIbTz+gqCqd88hQIuVCNWanUaxC2COJYOxT4eiIp1XiXA8Fhkt9YzyhTXyp3ePWk5fvh6Rq4X9v2gvFoGcNwt5LlWp0AmkjAihriL38boQzIXa9jMdUOngPtkmUSbDhkw4QkbnFE+SeAaB2AuJ6ld6aaY2utSbz7pRuiZUNSertmJEWR2k/rtzictFlrCGFpjeuM483A/QvD4+HQ9KHukE1diHPR6QyPyXXi4QiD4vYNc8tbmBENsnxZmzyEpn9PPyHZQsmgdAqgb7FBIuLUdlsHJpVucUp/C70eTBN3K6IyGo3kbQ9hm3jZ/t1wdLnokD2h4UlVpVvpyd+sibBJAn0xXM1r792njpwbHmRX97ObVf3OwDIOl0QDmnerfsZWHTIn7QpmDB2UGxzxtKT0rT71ZRUWwRUFJ+79GQkrBnZGflSAhSrrZiI1vcusHdoJ0Vbqv0ikkIUCxCqyn9LwehIBT9UXnFu35rvlb+q4+79fYFRgIt3gEQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(366004)(346002)(376002)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(966005)(478600001)(6486002)(66556008)(76116006)(66446008)(54906003)(64756008)(66476007)(110136005)(66946007)(85182001)(26005)(2616005)(71200400001)(86362001)(122000001)(36756003)(83380400001)(38100700002)(53546011)(6506007)(6512007)(7416002)(4001150100001)(2906002)(38070700009)(41300700001)(4326008)(316002)(8676002)(8936002)(5660300002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEsxSUFpVS9ybWhaTExPR1RlNHNlVnZzTXJUeDJXQWJUSUd3VjN0cDlXaU1u?=
 =?utf-8?B?TEhLYTg4eGtUZ2RncmEzOGxacmNYVW1YTWlaaGozOG1NUHp1dXBpaEM2L0w3?=
 =?utf-8?B?d2RHYnA3NWt3dEYrTkUrZ0pUYTcvb2YzelZSRnNzeC92MkJKYys0LzAveHIz?=
 =?utf-8?B?b1BENjNSV21LM1BrZ2xTTlErYXBwajJ4M3ovU1VRUFJjVUJjdng1RE92Mmlv?=
 =?utf-8?B?alFTYkFKQjJpNmZ4SkVkR3dvdXpDTVJrNW9QTkk0d1ZLbE9EWUhDV1NvVXA3?=
 =?utf-8?B?NHgxWEd0WjNsbHdGNThJaktzM0RZekJrQW9kaHFpbFB2MGRaclljdHA5aVZ0?=
 =?utf-8?B?aXFjZXNIdTlDa0hQYTNBdUlGWFhHR0dMc3RpbHgyMTB1U3dBQlhxSGVaQWtI?=
 =?utf-8?B?c1FFN29LYWtxdWVDMzNTRnhjOGdrcUZVTzE5TUpkcjQ2R21qbjZxanhjREZo?=
 =?utf-8?B?NHo2YzRkQUNJcmsrTWpWM0MyMGo4c0RxNUQwUlZvcnVNVWdHQkZ6bG50ck9Z?=
 =?utf-8?B?WmhKQk85YXRvYStWMzN3YnlSVFBOZ1BXZ1NzVHdDLzQ3VG9YbkVvRks0VVpv?=
 =?utf-8?B?V1Q2K1ZMdm5qVzdhMHlKVTdEN2FCL25lMkwvbDl5aEw5dHFPOUR3Zk1LbTF2?=
 =?utf-8?B?TG1ndXBtQ0dMS0x0MlhxaHRDdkJLNUZsYWNzbGZqcVh4TWR2SFRURXVJNytw?=
 =?utf-8?B?c0hQcVN5c3VkL0VDVksvaWVPcTZCMXZFVDR4dHJvWWJCWEZoc3pabWtpUjho?=
 =?utf-8?B?MXdWSGlPYnB0TWlpSWFWZC9HM0dTUm54Zkp0TVhJcDZQci9MbExGTis4NmVE?=
 =?utf-8?B?VFNwdGk1K1dCdldyVW5ldHA0YjVBYUhmd25PY3BBY3N3OFZaZ0xBdTJYc1FU?=
 =?utf-8?B?d0pkWkc4alVMMk9FaVNsemEySTFqT054SzZTWWcxaEhGZ2ZlZzBZamdZT2N5?=
 =?utf-8?B?ckMwQU1BZCthZUtkdzlXeVdycWFGZkVZWERERnJvQ2QrOXp3S3lyRmNGMWJG?=
 =?utf-8?B?Sk56em02OUZoRmMxdktreGd3VTFoUTBXbW9OdExIUEtKdVBMdmxMUDVHUGZh?=
 =?utf-8?B?dzFZV1RxZzlPbk1ZenJUVTRvT2xjYmtLYVVZb0dWbFN3cHowRnVNRG5TQXp3?=
 =?utf-8?B?T1B1N1lDZkI5b2VCUVlERlowK2EvOHNQa25yRDVSWjA3NzByVW8yR3M3WHoy?=
 =?utf-8?B?QkVFSmJodmNqczl2V3c3ZW5YZDgyS202R1JyL0tzUHBDUmE5S2lJdC95VkZp?=
 =?utf-8?B?UkpwQ3FQZXpLWXVORzByYVI0NE5uOWRpZHBsUVhKaEI0M25HTmNxR2NMeDBD?=
 =?utf-8?B?Qzd4ZHd1ZmZaT3dqcE5jK2hWN2lPZmVkUk1HVkowRlo5K1Fia0FlVnc4NkRi?=
 =?utf-8?B?djM3VHJKNUNSYWdiaDlFbnNuWk1kMHEwcVpGRWp2SXFORjJzbjQwVDV5eHNE?=
 =?utf-8?B?bllRMG9xOGdteFhrMWJnbXdLQ0Z0OVVmNXk5Yk1zNkpnR3YzRHdtSkJLQzRT?=
 =?utf-8?B?QmtsbWRENmJ4aWxCVWovZzRidVJlUENxWk5kTnAvN2dNQlZuVkFDbTJ2STFS?=
 =?utf-8?B?bUVKMG9Ta29TTm1tdjkxS1VnQWlIcDF4SFQ5aDFLMlFQdU11dFZGOWRXaGlE?=
 =?utf-8?B?UjJBWG9heHpnUlVYeE9oeG9SL3BLTHJTRzNETW9jVjFYdHRHczd0elFJYnVZ?=
 =?utf-8?B?NThMajZkWHFTQ05idUJ4RlgrMGZwcGlaNWcvdUw2SmRja0kvV0UwNmcxUDJa?=
 =?utf-8?B?S0hnRzZpcWw0cWswOTZQeDZ1QUNHN0QzVWJMVGprYXowbFQ1NzFMcFh4SldI?=
 =?utf-8?B?aVFrcE9CQlZ3cG9zRXROMnFRVVFDM3hRN01nUm5hZWVNMGZuSDhNSGlaRkJR?=
 =?utf-8?B?ZzFyTXpLcGNMTkxzcmw5YW1FSW9iYm02SENueGtXNE01emU0aEh4WWlJaEdl?=
 =?utf-8?B?WUNleWFteUVGbkg1RmhMLzhuTzdDSzV4Y3poVlNqdG9SUG1VUWR2Yk5nNzJX?=
 =?utf-8?B?dUhWWEJJMzBzc1ZDK3BlYmRBUytnU1o4VXJIYUNKeHlFU2VLcjBPYlQzcmtI?=
 =?utf-8?B?MGUwQ1RiM3IvV2pKWlhGYkR2R25wOHVyWHVNaitEajZWQ3VuaXBTR21JbXcx?=
 =?utf-8?Q?LR7OmC/NBuCr7jW6ZYMiYSuaB?=
Content-ID: <9D435AE0793D684C96327025186BCBBE@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1af42020-e25c-4db4-c29f-08dbd1520b6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 09:50:51.1987
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xuubeELZnUfC+1/mxkuNUVZj+Igdk9iADVWP3juTpeHhNUHY/4uLigJQrBzVwht3k6SXZW5GoZ2P/77/z612Uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB7064
X-MTK: N
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[60.244.123.138:from];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,quicinc.com,kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns,mediateko365.onmicrosoft.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,mediatek.com:dkim,80000000:email,mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns,devicetree.org:url]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 436A33EF90
Message-ID-Hash: NHEZEXUWYNF3XQTJAJMW6XZEL2TJIB7V
X-Message-ID-Hash: NHEZEXUWYNF3XQTJAJMW6XZEL2TJIB7V
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" 
 <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NHEZEXUWYNF3XQTJAJMW6XZEL2TJIB7V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 2023-10-19 at 10:16 +0530, Vijayanand Jitta wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  
> 
> On 9/11/2023 8:00 AM, Yong Wu wrote:
> > This adds the binding for describing a CMA memory for MediaTek
> SVP(Secure
> > Video Path).
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  .../mediatek,secure_cma_chunkmem.yaml         | 42
> +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> b/Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> > new file mode 100644
> > index 000000000000..cc10e00d35c4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> > @@ -0,0 +1,42 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: 
> http://devicetree.org/schemas/reserved-memory/mediatek,secure_cma_chunkmem.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek Secure Video Path Reserved Memory
> > +
> > +description:
> > +  This binding describes the reserved memory for secure video
> path.
> > +
> > +maintainers:
> > +  - Yong Wu <yong.wu@mediatek.com>
> > +
> > +allOf:
> > +  - $ref: reserved-memory.yaml
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,secure_cma_chunkmem
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reusable
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +
> > +    reserved-memory {
> > +        #address-cells = <1>;
> > +        #size-cells = <1>;
> > +        ranges;
> > +
> > +        reserved-memory@80000000 {
> > +            compatible = "mediatek,secure_cma_chunkmem";
> > +            reusable;
> > +            reg = <0x80000000 0x18000000>;
> > +        };
> > +    };
> 
> Instead of having a vendor specific binding for cma area, How about
> retrieving
> 
https://lore.kernel.org/lkml/1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com/
>  ?
> dma_heap_add_cma can just associate cma region and create a heap. So,
> we can reuse cma heap
> code for allocation instead of replicating that code here.
> 

Thanks for the reference. I guess we can't use it. There are two
reasons:
  
a) The secure heap driver is a pure software driver and we have no
device for it, therefore we cannot call dma_heap_add_cma.
  
b) The CMA area here is dynamic for SVP. Normally this CMA can be used
in the kernel. In the SVP case we use cma_alloc to get it and pass the
entire CMA physical start address and size into TEE to protect the CMA
region. The original CMA heap cannot help with the TEE part.

Thanks.

> Thanks,
> Vijay
> 
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
