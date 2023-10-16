Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7307CA7B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Oct 2023 14:06:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5F923F96C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Oct 2023 12:06:23 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2067.outbound.protection.outlook.com [40.107.223.67])
	by lists.linaro.org (Postfix) with ESMTPS id 0FD253EC22
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Oct 2023 12:06:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=2y2WMf34;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.67 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iorwbmsaDMr6NYe3Q3nGMbKQTrtxPaV4x0nAq9c976ZDXp1foreO2xtkr3HXFa/ORuqvD3YJ6j6xi2yWjUQFukqPuo7oB0Z/Hx7UC+ucqlldLNDxF4H8eZJBxTWePmkTX4JrUSYHng+wdMP7yJtQq02wiP2CPMWdM1IdZj/Ucy0QlL1FBa+P0kVun7FjQ+Zx8ugA1bF5cyvM56Y3p3Z2eirtJtFcg8q88moIQyV7ScH5KAA6iL2f7kQk8d5LCl7ak7rkUBa/H/X8ScNic9wnPMAcxU9uTreTe0obuvPDi/iSbL7tXi01HLPYgaTi5WxjCBqZuYvLnQ/+Pnj/HU8a2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OoC+QB6MSLe1po473X3M9zp/J30WrLznpU+wZG+QnJE=;
 b=dtz48ffFZVU7jbGrC/MUB/Lnup11Wg7G1WfqB5LSy22jZqQM69oWhAdq2ExwcsUYpGxLprRJYAsKe3vphxmiE19e4vbyqA8/wGtLwC+Jay18gtqUhD4/smIwNNnq7KLNb+QVXcRD1OCmIFHNCIHslwq0xnf0E9GSpUYzELKPTx3ff9o0p2+KNfBVAJmiUUfNuAL4y8IFMCaQPclsPmWpjhbPX6KvXKx70ojhoflTFPR5BPYy3MuJYwUDbi2d1lR5w6GzpaicV6Vk7E9WPOasO9j6Cfpa8I0M++G6jkAzRLzLXnxl934iJBi2dkoM7NPuiraVIbwG5vCDz+tOg/hvfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OoC+QB6MSLe1po473X3M9zp/J30WrLznpU+wZG+QnJE=;
 b=2y2WMf34OSs/SGgL/KoSQQG5U/tlQK1iAMSxAIiMySl4TApjndBAO1tkAjxHCh5ll8H7wX7KlyOwwzScVT4vagkHeoQbv+Au/IuAeLNyJ4sNLdy6feRf86kWw7T/BEgt86Q+EewXzdl66HZRRFA6ZkDTcIqO2Y9/1NXiE1FBga0=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH8PR12MB6795.namprd12.prod.outlook.com (2603:10b6:510:1c6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.43; Mon, 16 Oct
 2023 12:06:19 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a7fa:4411:67a3:131d]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a7fa:4411:67a3:131d%4]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 12:06:18 +0000
Message-ID: <fca23e1f-b2cc-4965-b844-975ba0f2366e@amd.com>
Date: Mon, 16 Oct 2023 14:06:12 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, sumit.semwal@linaro.org,
 syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
References: <00000000000068c7730607b903b7@google.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <00000000000068c7730607b903b7@google.com>
X-ClientProxiedBy: FR3P281CA0110.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::7) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|PH8PR12MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: a7938acd-645d-470a-8a01-08dbce404e19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6RmhHdzApoVWi1fbQR5uzw+DDIdr9Mf/1UW3CMM24ayjYGlUQy7pWGKy9O9tm5g0vvaqcsGIG04EOC6gU9gAthEQ7uyhJ03SSZyozNFKDq/biM8IUlZvSeZwFpYlzKBZ2AvJePyS01QNX+R9KkeTlcjytW2gH4eojP9uSRp+1YoHfOpWFCVZZf03zJ+LS8xnAgzGyzyUiRg1diuBU6PCl9QJgNIuAmLND20MNNmMrrw8qn5gG1lKS2oNmA7s5hZcKMJte7EjrBM+9r2YqsPICjJ8eDzgkOw1plycXOu88s/8dtON2zuABLQwygiViZAteyTXXq2gIxTg9rg1XLiXeFYD+uuFEJflSfQhGx+NEbZ1yKadHqt3D9Ef38wuGPiaZuXwfTZ1tzu+t/h1uqSwiSaNSnonnICmUaFus8pxgVakP0k7Hx5CJdUQbDe81XHTTQyxZ7NEpbctfUE+746y6QBo3xd8CgM/WtyzEkGWnsHRFrZCnJ7x7DbLhLCf+BzVZ5Ed6l83bvVK9QT4mRMoboEhQ5kbRAwGQCzvgGM5xeHIvICjIlmDnzXJy95dHih+2wDaX/MAXB8SkBEj0x7lNrUfUeDwUWdnDWSfnLn47vCbnPs44K992X60d9IXNAJZ72XTxO4A/BPWoJ3zbcirjdbuU7NngiJm6yQohRzClmjRIcosF116RQ100R5Uqc7mqVHDU5pM0y4AleyWCLaPmugoAziANeTanZZ9Rirdwjs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(396003)(39860400002)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(478600001)(966005)(38100700002)(5660300002)(6486002)(921005)(6666004)(36756003)(66946007)(66556008)(66476007)(41300700001)(8936002)(45080400002)(8676002)(316002)(7416002)(6512007)(26005)(83380400001)(31686004)(66574015)(2906002)(2616005)(86362001)(31696002)(6506007)(99710200001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SklCUStMOURuR0lJUXBZTXJPS1l1dXl3WE9JMnRnVTZuQXBzVDRZSmJiMlU1?=
 =?utf-8?B?TG9WVHMzNm5IcHdSNjAzSFFJN1pYVCs1YkZBckJtUllkOXRacTdYUGpOclZy?=
 =?utf-8?B?djl5T0V4M1dQYjNKTDZDWEU4RkR2TWxCVElTR00rNHNTbG5QdTFsQzBBZzNp?=
 =?utf-8?B?ZFE5Q3ErcW1PbDZFNXV4V3M0azlBUFJ2eTJNMWRGUWtUZ05aQlJsUmRXcVl2?=
 =?utf-8?B?em5BZGJLOExUWCtzcDZ1ci9GWjlLSnBXK0xkd3FOSmlnMHVMT1BseXNWd0ZO?=
 =?utf-8?B?RWVzcXlNRWVLWmRXZ0U3RkhIVTBQdkVkMXpHdmh3WjJPd25lUEt0R0g0ME1Q?=
 =?utf-8?B?RExaeVBIeWF2NDFsRTZkOTNqcms3ZUdwTUJUK21WdTNFc25HMUVNUVhiSXor?=
 =?utf-8?B?Q2hHU1RxZCtvbUowVTFpeHp6Z1ZsMktsM2IwakJINWhSNWc1a1NhZVcxS2Ns?=
 =?utf-8?B?SnErQnBqQjFIQ2plL2RqeXB4cDJpZzdvVVlVQkIwTFZaMTBLY3BpcVRSdllk?=
 =?utf-8?B?YU1NRXVuRkQrY0dwekgzTFlQQmRVMVRLVy9Sb0tVbG5rdmI4d2FkcHU3SnhL?=
 =?utf-8?B?YkZoS1pVRDBWcmdVRE9ZNGczNXNiQ2d6NXo5L2F2SFkyYkdiQzRONGo2c0tx?=
 =?utf-8?B?SXp2U0JTcjhFWU03d0x3aUdEb3o0SzRHM0kyN3lhV09JZS92Y3dZdmRkRmNO?=
 =?utf-8?B?bEtINk82S21kWHREQmZKenpzZnVoSjJGeUhrVjkyaHhrNTNnYUI2RE5VRkRZ?=
 =?utf-8?B?TUZZVWg1cHFLZE44R2xUdWRZUXlMZXVuc1V3Rkc0Z011YzZVQ0M1OFlwa2gr?=
 =?utf-8?B?Tlp0bHJONkNNaWliTUhSK20xZEU3c1FzRXJnWHUyNTdtbDlpMzNqWmNDWFpX?=
 =?utf-8?B?ZFA3a0NQb1dOTW9MTkpWTDIwVUFMWm50M1ZpVmVzTmtST0hla2JSc3E0bGJa?=
 =?utf-8?B?YVF0TGprM3d5TG16eHIvNFU0UkRFZkpOMjUwalNheW91dDRqQkkvQjNKUVQ2?=
 =?utf-8?B?QjNzM3pDU3k2Ky8xMDJSRzVWNnAvS1BXQU5wYnlCbENNSm83OVNhRDdhTGQ5?=
 =?utf-8?B?bkRtcTNCbm9XZVBxbFNZTlJVU0dYOHFmd2g0K3VNcU8yVC84T2V0b1RtUVM4?=
 =?utf-8?B?dFZoUkdodkVyYVZtZldmK25UMzNKRnMxaDlwRWh2YU5GM1FpcUZNcE9iYnRx?=
 =?utf-8?B?ZDFYVVRhcDRNZ01pMDZnT0hxOEFMOVA1SFVaVzZxbEppV3JUUDNLVFlZbUNF?=
 =?utf-8?B?Q2ZKdUlsUS85TzJZMUx4L3EzODUzR245WFREbVJNNTBtWjcrV09qcWk5c2hQ?=
 =?utf-8?B?cWF6dWRpTnRoZm50WlJFMEFCUmd0TDFOYnU4ekUwN0ZBVU9tWE95NU00ZFpv?=
 =?utf-8?B?NmRCSG8zSy9qdDJkbER4TmE0MitXaEk3ejlKTzFhdExNb1l3S0lGd2taWWs0?=
 =?utf-8?B?Qjdnd2FjUStMOFlZVlQvcTBPN0k4RTFFZW1qWW1raVVqWmg5d2l5dElVNUNW?=
 =?utf-8?B?eU03UFFkMERJZ1lvME5obzJGbnFubGVocmZ0UTNlWTl3T3ZFVWVjTWs5Y0hv?=
 =?utf-8?B?bkRBS0xxb1RoRU94TmZNNFgxdnJLblRXbDk4TEQ4UGZTZEkreitGeXYyUFFN?=
 =?utf-8?B?aUlXbnBQTVlrRVBScmhUdWhHaFdrYzBjbUF2QnRUZmJFN3NEMng3Ui9CbEZL?=
 =?utf-8?B?RXg4THJFS1BHUGRrRi9PMFRSWFhQU2JKVmJvbFRyZXBNaS80OTNMUlVORU5Y?=
 =?utf-8?B?UFc1dVp0ZU15WmVkN1pYMnVzY1VxdUpKaVdNeGw4UFcxUDlXR1BzNWY3L3pP?=
 =?utf-8?B?TXZFT1NTOS95OWltQk16U1IrVldlWDRpVXVkZFM3QWpSeEN5S2VxM1ZJUldJ?=
 =?utf-8?B?VUMxeWhRS3piK0R5UWdza0RXeDY1SFJsRkdDRFNtUHhGNFNjYXVueW9qdyto?=
 =?utf-8?B?MWliNmpWald3dEppSHRZWE5DMDNrblZQK2JsdnN1S2tkbmFmWkpObnhaVC9w?=
 =?utf-8?B?aW4yY05scHhWeTRXRU1YV3ROcU1qazFwS0s3Y0h5V092SWdzUlNwWUZoU1N2?=
 =?utf-8?B?OXNnVDFnbVdIUW5FbFhuZVh2YUhYcWgxZzdaWCttcVROOWpmbWRoTzRLdzhr?=
 =?utf-8?Q?56Rk=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7938acd-645d-470a-8a01-08dbce404e19
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 12:06:18.7500
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +190kTdCAPZDVpj0GcapNqbfRf9KcA/6u/xBBeBDbNc8c2df7vAdmPG3U9fSye1G
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6795
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.43 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=32d0b9b42ceb8b10];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	DKIM_TRACE(0.00)[amd.com:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:dkim,mail-dm6nam11on2067.outbound.protection.outlook.com:rdns,appspotmail.com:email,syzkaller.appspot.com:url,NAM11-DM6-obe.outbound.protection.outlook.com:helo];
	REDIRECTOR_URL(0.00)[goo.gl];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.67:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0FD253EC22
Message-ID-Hash: QXFNP7RF4CECJN4RJAE2KA77KA6ZSXGS
X-Message-ID-Hash: QXFNP7RF4CECJN4RJAE2KA77KA6ZSXGS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] [dri?] WARNING in drm_prime_fd_to_handle_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QXFNP7RF4CECJN4RJAE2KA77KA6ZSXGS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgZ3V5cywNCg0KSSB0aGluayBJIGtub3cgd2hhdCdzIGdvaW5nIG9uIGhlcmUuIFRoZSBzeXpi
b3QgYmlzZWN0IGlzIGFjdHVhbGx5IG5vdCANCjEwMCUgY29ycmVjdCwgdGhlIHBhdGNoIGluIHF1
ZXN0aW9uIGp1c3QgbWFrZXMgdGhlIHByb2JsZW0gYXBwZWFyIGZvciANCnRoZSBjb25zb2xlIGJ1
ZmZlciBhcyB3ZWxsLg0KDQpXaGF0IHNlZW1zIHRvIGhhcHBlbiBpcyB0aGF0IHdlIGV4cG9ydCBz
b21lIEJPIGFzIERNQS1idWYgYW5kIHRoZW4gY2xvc2UgDQphbGwgaGFuZGxlcyB0byB0aGUgYnVm
ZmVyLg0KDQpUaGUgRE1BLWJ1ZiBvZiB0aGUgQk8gdGhlbiBnZXRzIGRlc3Ryb3llZCwgYnV0IHRo
ZSBCTyBjYW4gYmUga2VwdCBhcm91bmQgDQpiZWNhdXNlIGl0IGlzIHJlZmVyZW5jZWQgYnkgdGhl
IGNvbnNvbGUgKGZvciBleGFtcGxlKSBvciB1c2VkIGFzIHBsYW5lIA0KaW4gS01TIGV0Yy4uLi4N
Cg0KSWYgd2UgdGhlbiBjcmVhdGUgYSBuZXcgR0VNIGhhbmRsZSBmb3IgdGhhdCBCTyBhZ2FpbiBh
bmQgcmUtZXhwb3J0IGl0IGJ5IA0KRE1BLWJ1ZiB3ZSBydW4gaW50byB0aGUgd2FybmluZyBiZWxv
dyBiZWNhdXNlIHRoZSBvYmplY3QgYWxyZWFkeSBoYXMgDQpzb21lIERNQS1idWYgYXNzaWduZWQg
dG8gaXQuDQoNCkFueSBpZGVhcyBob3cgdG8gZml4IHRoaXM/DQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQoNCkFtIDE1LjEwLjIzIHVtIDA1OjM3IHNjaHJpZWIgc3l6Ym90Og0KPiBIZWxsbywNCj4N
Cj4gc3l6Ym90IGZvdW5kIHRoZSBmb2xsb3dpbmcgaXNzdWUgb246DQo+DQo+IEhFQUQgY29tbWl0
OiAgICAxYzhiODZhMzc5OWYgTWVyZ2UgdGFnICd4c2E0NDEtNi42LXRhZycgb2YgZ2l0Oi8vZ2l0
Lmtlcm5lLi4NCj4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtDQo+IGNvbnNvbGUrc3RyYWNlOiBo
dHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMzAwNWUzMTY4MDAwMA0K
PiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmln
P3g9MzJkMGI5YjQyY2ViOGIxMA0KPiBkYXNoYm9hcmQgbGluazogaHR0cHM6Ly9zeXprYWxsZXIu
YXBwc3BvdC5jb20vYnVnP2V4dGlkPTBkYTgxY2NiYTIzNDVlZWI3ZjQ4DQo+IGNvbXBpbGVyOiAg
ICAgICBnY2MgKERlYmlhbiAxMi4yLjAtMTQpIDEyLjIuMCwgR05VIGxkIChHTlUgQmludXRpbHMg
Zm9yIERlYmlhbikgMi40MA0KPiBzeXogcmVwcm86ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBw
c3BvdC5jb20veC9yZXByby5zeXo/eD0xM2M0ODM0NTY4MDAwMA0KPiBDIHJlcHJvZHVjZXI6ICAg
aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5jP3g9MTAxYjM2Nzk2ODAwMDAN
Cj4NCj4gRG93bmxvYWRhYmxlIGFzc2V0czoNCj4gZGlzayBpbWFnZTogaHR0cHM6Ly9zdG9yYWdl
Lmdvb2dsZWFwaXMuY29tL3N5emJvdC1hc3NldHMvNDVlOTM3Nzg4NmU5L2Rpc2stMWM4Yjg2YTMu
cmF3Lnh6DQo+IHZtbGludXg6IGh0dHBzOi8vc3RvcmFnZS5nb29nbGVhcGlzLmNvbS9zeXpib3Qt
YXNzZXRzLzk1MTFhNDFhNmQxZS92bWxpbnV4LTFjOGI4NmEzLnh6DQo+IGtlcm5lbCBpbWFnZTog
aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3N5emJvdC1hc3NldHMvZmFjMDdlMWMzYzFh
L2J6SW1hZ2UtMWM4Yjg2YTMueHoNCj4NCj4gVGhlIGlzc3VlIHdhcyBiaXNlY3RlZCB0bzoNCj4N
Cj4gY29tbWl0IDg1ZTI2ZGQ1MTAwYTE4MmJmODQ0ODA1MDQyNzUzOWMwYTY2YWI3OTMNCj4gQXV0
aG9yOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IERhdGU6
ICAgVGh1IEphbiAyNiAwOToyNDoyNiAyMDIzICswMDAwDQo+DQo+ICAgICAgZHJtL2NsaWVudDog
Zml4IGNpcmN1bGFyIHJlZmVyZW5jZSBjb3VudGluZyBpc3N1ZQ0KPg0KPiBiaXNlY3Rpb24gbG9n
OiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTRjZjE3ZjE2
ODAwMDANCj4gZmluYWwgb29wczogICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gv
cmVwb3J0LnR4dD94PTE2Y2YxN2YxNjgwMDAwDQo+IGNvbnNvbGUgb3V0cHV0OiBodHRwczovL3N5
emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMmNmMTdmMTY4MDAwMA0KPg0KPiBJTVBP
UlRBTlQ6IGlmIHlvdSBmaXggdGhlIGlzc3VlLCBwbGVhc2UgYWRkIHRoZSBmb2xsb3dpbmcgdGFn
IHRvIHRoZSBjb21taXQ6DQo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrMGRhODFjY2JhMjM0NWVlYjdm
NDhAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQ0KPiBGaXhlczogODVlMjZkZDUxMDBhICgiZHJt
L2NsaWVudDogZml4IGNpcmN1bGFyIHJlZmVyZW5jZSBjb3VudGluZyBpc3N1ZSIpDQo+DQo+IC0t
LS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQ0KPiBXQVJOSU5HOiBDUFU6IDAgUElE
OiA1MDQwIGF0IGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYzozMjYgZHJtX2dlbV9wcmltZV9m
ZF90b19oYW5kbGUgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jOjMyNiBbaW5saW5lXQ0KPiBX
QVJOSU5HOiBDUFU6IDAgUElEOiA1MDQwIGF0IGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYzoz
MjYgZHJtX3ByaW1lX2ZkX3RvX2hhbmRsZV9pb2N0bCsweDU1NS8weDYwMCBkcml2ZXJzL2dwdS9k
cm0vZHJtX3ByaW1lLmM6Mzc0DQo+IE1vZHVsZXMgbGlua2VkIGluOg0KPiBDUFU6IDAgUElEOiA1
MDQwIENvbW06IHN5ei1leGVjdXRvcjQwNSBOb3QgdGFpbnRlZCA2LjYuMC1yYzUtc3l6a2FsbGVy
LTAwMDU1LWcxYzhiODZhMzc5OWYgIzANCj4gSGFyZHdhcmUgbmFtZTogR29vZ2xlIEdvb2dsZSBD
b21wdXRlIEVuZ2luZS9Hb29nbGUgQ29tcHV0ZSBFbmdpbmUsIEJJT1MgR29vZ2xlIDA5LzA2LzIw
MjMNCj4gUklQOiAwMDEwOmRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fcHJpbWUuYzozMjYgW2lubGluZV0NCj4gUklQOiAwMDEwOmRybV9wcmltZV9mZF90b19o
YW5kbGVfaW9jdGwrMHg1NTUvMHg2MDAgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jOjM3NA0K
PiBDb2RlOiA4OSBkZiBlOCAwZSA5YiAyNiBmZCBmMCA0OCBmZiAwMyBlOSA3ZSBmZCBmZiBmZiBl
OCBiMCBkYyBkMCBmYyA0YyA4OSBmNyA0NCA4OSBlYiBlOCA3NSA3MyA4YiAwNSBlOSBkYSBmZSBm
ZiBmZiBlOCA5YiBkYyBkMCBmYyA8MGY+IDBiIGU5IDVkIGZkIGZmIGZmIGU4IDNmIDk0IDI2IGZk
IGU5IDNhIGZjIGZmIGZmIDQ4IDhiIDdjIDI0IDA4DQo+IFJTUDogMDAxODpmZmZmYzkwMDAzYTVm
YzcwIEVGTEFHUzogMDAwMTAyOTMNCj4gUkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJCWDogZmZmZjg4
ODAxOGYxNGMwMCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDANCj4gUkRYOiBmZmZmODg4MDFkNjkxZGMw
IFJTSTogZmZmZmZmZmY4NGI2ZWExNSBSREk6IGZmZmY4ODgxNDc2ZjM5MjgNCj4gUkJQOiBmZmZm
ODg4MDFmYWM1NDAwIFIwODogMDAwMDAwMDAwMDAwMDAwNyBSMDk6IGZmZmZmZmZmZmZmZmYwMDAN
Cj4gUjEwOiBmZmZmODg4MTQ3NmYzODAwIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IGZmZmZj
OTAwMDNhNWZlMTANCj4gUjEzOiBmZmZmODg4MTQ3NmYzODAwIFIxNDogZmZmZjg4ODAxYzU5MGMx
MCBSMTU6IDAwMDAwMDAwMDAwMDAwMDANCj4gRlM6ICAwMDAwNTU1NTU1NWQ2MzgwKDAwMDApIEdT
OmZmZmY4ODgwYjk4MDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMA0KPiBDUzogIDAw
MTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzDQo+IENSMjogMDAwMDU1
NWRiNzVmNDA1OCBDUjM6IDAwMDAwMDAwNzIyMDkwMDAgQ1I0OiAwMDAwMDAwMDAwMzUwZWYwDQo+
IENhbGwgVHJhY2U6DQo+ICAgPFRBU0s+DQo+ICAgZHJtX2lvY3RsX2tlcm5lbCsweDI4MC8weDRj
MCBkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmM6Nzg5DQo+ICAgZHJtX2lvY3RsKzB4NWNiLzB4
YmYwIGRyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwuYzo4OTINCj4gICB2ZnNfaW9jdGwgZnMvaW9j
dGwuYzo1MSBbaW5saW5lXQ0KPiAgIF9fZG9fc3lzX2lvY3RsIGZzL2lvY3RsLmM6ODcxIFtpbmxp
bmVdDQo+ICAgX19zZV9zeXNfaW9jdGwgZnMvaW9jdGwuYzo4NTcgW2lubGluZV0NCj4gICBfX3g2
NF9zeXNfaW9jdGwrMHgxOGYvMHgyMTAgZnMvaW9jdGwuYzo4NTcNCj4gICBkb19zeXNjYWxsX3g2
NCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo1MCBbaW5saW5lXQ0KPiAgIGRvX3N5c2NhbGxfNjQr
MHgzOC8weGIwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgwDQo+ICAgZW50cnlfU1lTQ0FMTF82
NF9hZnRlcl9od2ZyYW1lKzB4NjMvMHhjZA0KPiBSSVA6IDAwMzM6MHg3ZjBjODIxNGJlNjkNCj4g
Q29kZTogMjggMDAgMDAgMDAgNzUgMDUgNDggODMgYzQgMjggYzMgZTggYzEgMTcgMDAgMDAgOTAg
NDggODkgZjggNDggODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkgYzIgNGQgODkgYzggNGMg
OGIgNGMgMjQgMDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCBjNyBjMSBi
OCBmZiBmZiBmZiBmNyBkOCA2NCA4OSAwMSA0OA0KPiBSU1A6IDAwMmI6MDAwMDdmZmY2ZjQxNTZm
OCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMDEwDQo+IFJBWDogZmZm
ZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwN2YwYzgyMTRiZTY5
DQo+IFJEWDogMDAwMDAwMDAyMDAwMDAwMCBSU0k6IDAwMDAwMDAwYzAwYzY0MmUgUkRJOiAwMDAw
MDAwMDAwMDAwMDAzDQo+IFJCUDogMDAwMDAwMDAwMDAwMDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAw
YTAgUjA5OiAwMDAwMDAwMDAwMDAwMGEwDQo+IFIxMDogMDAwMDAwMDAwMDAwMDBhMCBSMTE6IDAw
MDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAwMDAwMDAwDQo+IFIxMzogMDAwMDdmMGM4MjFj
MzgyMCBSMTQ6IDAwMDA3ZmZmNmY0MTU3MjAgUjE1OiAwMDAwN2ZmZjZmNDE1NzEwDQo+ICAgPC9U
QVNLPg0KPg0KPg0KPiAtLS0NCj4gVGhpcyByZXBvcnQgaXMgZ2VuZXJhdGVkIGJ5IGEgYm90LiBJ
dCBtYXkgY29udGFpbiBlcnJvcnMuDQo+IFNlZSBodHRwczovL2dvby5nbC90cHNtRUogZm9yIG1v
cmUgaW5mb3JtYXRpb24gYWJvdXQgc3l6Ym90Lg0KPiBzeXpib3QgZW5naW5lZXJzIGNhbiBiZSBy
ZWFjaGVkIGF0IHN5emthbGxlckBnb29nbGVncm91cHMuY29tLg0KPg0KPiBzeXpib3Qgd2lsbCBr
ZWVwIHRyYWNrIG9mIHRoaXMgaXNzdWUuIFNlZToNCj4gaHR0cHM6Ly9nb28uZ2wvdHBzbUVKI3N0
YXR1cyBmb3IgaG93IHRvIGNvbW11bmljYXRlIHdpdGggc3l6Ym90Lg0KPiBGb3IgaW5mb3JtYXRp
b24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOiBodHRwczovL2dvby5nbC90cHNtRUojYmlz
ZWN0aW9uDQo+DQo+IElmIHRoZSBidWcgaXMgYWxyZWFkeSBmaXhlZCwgbGV0IHN5emJvdCBrbm93
IGJ5IHJlcGx5aW5nIHdpdGg6DQo+ICNzeXogZml4OiBleGFjdC1jb21taXQtdGl0bGUNCj4NCj4g
SWYgeW91IHdhbnQgc3l6Ym90IHRvIHJ1biB0aGUgcmVwcm9kdWNlciwgcmVwbHkgd2l0aDoNCj4g
I3N5eiB0ZXN0OiBnaXQ6Ly9yZXBvL2FkZHJlc3MuZ2l0IGJyYW5jaC1vci1jb21taXQtaGFzaA0K
PiBJZiB5b3UgYXR0YWNoIG9yIHBhc3RlIGEgZ2l0IHBhdGNoLCBzeXpib3Qgd2lsbCBhcHBseSBp
dCBiZWZvcmUgdGVzdGluZy4NCj4NCj4gSWYgeW91IHdhbnQgdG8gb3ZlcndyaXRlIGJ1ZydzIHN1
YnN5c3RlbXMsIHJlcGx5IHdpdGg6DQo+ICNzeXogc2V0IHN1YnN5c3RlbXM6IG5ldy1zdWJzeXN0
ZW0NCj4gKFNlZSB0aGUgbGlzdCBvZiBzdWJzeXN0ZW0gbmFtZXMgb24gdGhlIHdlYiBkYXNoYm9h
cmQpDQo+DQo+IElmIHRoZSBidWcgaXMgYSBkdXBsaWNhdGUgb2YgYW5vdGhlciBidWcsIHJlcGx5
IHdpdGg6DQo+ICNzeXogZHVwOiBleGFjdC1zdWJqZWN0LW9mLWFub3RoZXItcmVwb3J0DQo+DQo+
IElmIHlvdSB3YW50IHRvIHVuZG8gZGVkdXBsaWNhdGlvbiwgcmVwbHkgd2l0aDoNCj4gI3N5eiB1
bmR1cA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
